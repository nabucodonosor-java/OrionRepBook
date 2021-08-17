package com.orion.repbook.services;

import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.orion.repbook.dto.UniversityDto;
import com.orion.repbook.entities.University;
import com.orion.repbook.repository.UniversityRepository;
import com.orion.repbook.services.exceptions.DatabaseException;
import com.orion.repbook.services.exceptions.ResourceNotFoundException;

@Service
public class UniversityService {
	
	@Autowired
	private UniversityRepository repository;
	
	@Transactional(readOnly = true)
	public Page<UniversityDto> findAllPaged(PageRequest pageRequest) {
		Page<University> page = repository.findAll(pageRequest);
		return UniversityDto.converter(page);
	}
	
	@Transactional(readOnly = true)
	public UniversityDto findById(Long id) {
		Optional<University> opt = repository.findById(id);
		University entity = opt.orElseThrow(() -> new ResourceNotFoundException("Universidade não encontrado!"));
		return new UniversityDto(entity);
	}
	
	@Transactional
	public UniversityDto insert(UniversityDto dto) {
		University entity = new University();
		entity.setName(dto.getName());
		entity = repository.save(entity);
		return new UniversityDto(entity);
	}
	
	@Transactional
	public UniversityDto update(Long id, UniversityDto dto) {
		try {
			
			University entity = repository.getOne(id);
			entity.setName(dto.getName());
			entity = repository.save(entity);
			return new UniversityDto(entity);
			
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Universidade não encontrado!");
		}
	}
	
	public void delete(Long id) {
		try {
			repository.deleteById(id);
		}
		catch (EmptyResultDataAccessException e) {
			throw new ResourceNotFoundException("Id: " + id + " não encontrado!");
		}
		catch (DataIntegrityViolationException e) {
			throw new DatabaseException("Violação de integridade do DB");
		}
	}

}
