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

import com.orion.repbook.dto.CourseDto;
import com.orion.repbook.entities.Course;
import com.orion.repbook.repository.CourseRepository;
import com.orion.repbook.services.exceptions.DatabaseException;
import com.orion.repbook.services.exceptions.ResourceNotFoundException;

@Service
public class CourseService {
	
	@Autowired
	private CourseRepository repository;
	
	@Transactional(readOnly = true)
	public Page<CourseDto> findAllPaged(PageRequest pageRequest) {
		Page<Course> page = repository.findAll(pageRequest);
		return CourseDto.converter(page);
	}
	
	@Transactional(readOnly = true)
	public CourseDto findById(Long id) {
		Optional<Course> opt = repository.findById(id);
		Course entity = opt.orElseThrow(() -> new ResourceNotFoundException("Curso não encontrado!"));
		return new CourseDto(entity);
	}
	
	@Transactional
	public CourseDto insert(CourseDto dto) {
		Course entity = new Course();
		entity.setName(dto.getName());
		entity = repository.save(entity);
		return new CourseDto(entity);
	}
	
	@Transactional
	public CourseDto update(Long id, CourseDto dto) {
		try {
			
			Course entity = repository.getOne(id);
			entity.setName(dto.getName());
			entity = repository.save(entity);
			return new CourseDto(entity);
			
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Curso não encontrado!");
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
