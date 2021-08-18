package com.orion.repbook.services;

import java.net.URL;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.orion.repbook.dto.RoleDto;
import com.orion.repbook.dto.UriDto;
import com.orion.repbook.dto.UserDto;
import com.orion.repbook.dto.UserInsertDto;
import com.orion.repbook.dto.UserUpdateDto;
import com.orion.repbook.entities.Role;
import com.orion.repbook.entities.User;
import com.orion.repbook.repository.RoleRepository;
import com.orion.repbook.repository.UserRepository;
import com.orion.repbook.services.exceptions.DatabaseException;
import com.orion.repbook.services.exceptions.ResourceNotFoundException;

@Service
public class UserService implements UserDetailsService {

	private static Logger logger = LoggerFactory.getLogger(UserService.class);

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private UserRepository repository;

	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private S3Service s3Service;

	@Transactional(readOnly = true)
	public Page<UserDto> findAllPaged(Pageable pageable) {
		Page<User> list = repository.findAll(pageable);
		return list.map(x -> new UserDto(x));
	}

	@Transactional(readOnly = true)
	public UserDto findById(Long id) {
		Optional<User> obj = repository.findById(id);
		User entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
		return new UserDto(entity);
	}

	@Transactional
	public UserDto insert(UserInsertDto dto) {
		User entity = new User();
		copyDtoToEntity(dto, entity);
		entity.setPassword(passwordEncoder.encode(dto.getPassword()));
		entity = repository.save(entity);
		return new UserDto(entity);
	}

	@Transactional
	public UserDto update(Long id, UserUpdateDto dto) {
		try {
			User entity = repository.getOne(id);
			copyDtoToEntity(dto, entity);
			entity = repository.save(entity);
			return new UserDto(entity);
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Id not found " + id);
		}
	}

	public void delete(Long id) {
		try {
			repository.deleteById(id);
		} catch (EmptyResultDataAccessException e) {
			throw new ResourceNotFoundException("Id not found " + id);
		} catch (DataIntegrityViolationException e) {
			throw new DatabaseException("Integrity violation");
		}
	}

	public UriDto uploadFile(MultipartFile file) {

		URL url = s3Service.uploadFile(file);

		return new UriDto(url.toString());
	}

	private void copyDtoToEntity(UserDto dto, User entity) {

		entity.setName(dto.getName());
		entity.setImgUrl(dto.getImgUrl());
		entity.setEmail(dto.getEmail());

		entity.getRoles().clear();
		for (RoleDto roleDto : dto.getRoles()) {
			Role role = roleRepository.getOne(roleDto.getId());
			entity.getRoles().add(role);
		}
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = repository.findByEmail(username);
		if (user == null) {
			logger.error("User not found: " + username);
			throw new UsernameNotFoundException("Email not found");
		}
		logger.info("User found: " + username);
		return user;
	}
}
