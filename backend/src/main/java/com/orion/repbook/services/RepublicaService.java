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
import com.orion.repbook.entities.Republica;
import com.orion.repbook.repository.RepublicaRepository;
import com.orion.repbook.services.exceptions.DatabaseException;
import com.orion.repbook.services.exceptions.ResourceNotFoundException;

@Service
public class RepublicaService {
	
	@Autowired
	private RepublicaRepository repository;
	
	@Transactional(readOnly = true)
	public Page<RepublicaDto> findAllPaged(PageRequest pageRequest) {
		Page<Republica> page = repository.findAll(pageRequest);
		return page.map(r -> new RepublicaDto(r, r.getResidents()));
	}
	
	@Transactional(readOnly = true)
	public RepublicaDto findRepublicaWithResidents(Long id) {
		Optional<Republica> optional = repository.findById(id);
		return new RepublicaDto(optional.orElseThrow(() -> new ResourceNotFoundException("República não encontrada!")),
				optional.get().getResidents());
	}
	
	@Transactional(readOnly = true)
	public RepublicaDto findById(Long id) {
		Optional<Republica> opt = repository.findById(id);
		Republica entity = opt.orElseThrow(() -> new ResourceNotFoundException("Republica não encontrado!"));
		return new RepublicaDto(entity);
	}
	
	@Transactional
	public RepublicaDto insert(RepublicaDto dto) {
		Republica entity = new Republica();
		copyToEntity(entity, dto);
		entity = repository.save(entity);
		return new RepublicaDto(entity);
	}
	
	@Transactional
	public RepublicaDto update(Long id, RepublicaDto dto) {
		try {
			
			Republica entity = repository.getOne(id);
			copyToEntity(entity, dto);
			entity = repository.save(entity);
			return new RepublicaDto(entity);
			
		} catch (EntityNotFoundException e) {
			throw new ResourceNotFoundException("Republica não encontrada!");
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
	
	private void copyToEntity(Republica entity, RepublicaDto dto) {
		
		entity.setImgUrl(dto.getImgUrl());
		entity.setName(dto.getName());
		entity.setFoundedIn(dto.getFoundedIn());
		entity.setActive(dto.isActive());
		
	}

}
