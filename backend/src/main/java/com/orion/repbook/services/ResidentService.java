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

import com.orion.repbook.dto.RepublicaDto;
import com.orion.repbook.dto.ResidentDto;
import com.orion.repbook.entities.Course;
import com.orion.repbook.entities.Republica;
import com.orion.repbook.entities.Resident;
import com.orion.repbook.entities.University;
import com.orion.repbook.repository.RepublicaRepository;
import com.orion.repbook.repository.ResidentRepository;
import com.orion.repbook.services.exceptions.DatabaseException;
import com.orion.repbook.services.exceptions.ResourceNotFoundException;

@Service
public class ResidentService {
	
	@Autowired
	private ResidentRepository repository;
	
	@Autowired
	private RepublicaRepository republicaRepository;
	
	@Transactional(readOnly = true)
	public Page<ResidentDto> findAllPaged(PageRequest pageRequest) {
		Page<Resident> list = repository.findAll(pageRequest);
		return list.map(x -> new ResidentDto(x));
	}

	@Transactional(readOnly = true)
	public ResidentDto findById(Long id) {
		Optional<Resident> obj = repository.findById(id);
		Resident entity = obj.orElseThrow(() -> new ResourceNotFoundException("Morador não encontrado!"));
		return new ResidentDto(entity, entity.getRepublicas());
	}
	
	@Transactional
	public ResidentDto insert(ResidentDto dto) {
		Resident entity = new Resident();
		copyToEntity(entity, dto);
		entity = repository.save(entity);
		return new ResidentDto(entity);
	}
	
	@Transactional
	public ResidentDto update(Long id, ResidentDto dto) {
		try {
			
			Resident entity = repository.getOne(id);
			copyToEntity(entity, dto);
			entity = repository.save(entity);
			return new ResidentDto(entity);
			
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Morador não encontrado!");
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
	
	private void copyToEntity(Resident entity, ResidentDto dto) {
		
		entity.setImgUrl(dto.getImgUrl());
		entity.setName(dto.getName());
		entity.setNickname(dto.getNickname());
		entity.setEntryYear(dto.getEntryYear());
		entity.setOutgoingYear(dto.getOutgoingYear());
		entity.setCourse(new Course(dto.getCourse()));
		entity.setUniversity(new University(dto.getUniversity()));
		
		entity.getRepublicas().clear();
		
		for (RepublicaDto repDto : dto.getRepublicas()) {
			Republica rep = republicaRepository.getOne(repDto.getId());
			entity.getRepublicas().add(rep);
		}
	}

}
