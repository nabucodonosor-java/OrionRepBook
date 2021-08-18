package com.orion.repbook.controllers;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.orion.repbook.dto.ResidentDto;
import com.orion.repbook.services.ResidentService;

@RestController
@RequestMapping(value = "/residents")
public class ResidentController {

	@Autowired
	private ResidentService service;
	
	@GetMapping
	public ResponseEntity<Page<ResidentDto>> findAll(
			@RequestParam(value = "republicaId", defaultValue = "0") Long republicaId,
			@RequestParam(value = "name", defaultValue = "") String name,
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "size", defaultValue = "12") Integer size,
			@RequestParam(value = "sort", defaultValue = "ASC") String sort,
			@RequestParam(value = "orderBy", defaultValue = "name") String orderBy) {
				
		PageRequest pageRequest = PageRequest.of(page, size, Direction.valueOf(sort), orderBy);
		Page<ResidentDto> list = service.findAllPaged(pageRequest, republicaId, name.trim());
		
		return ResponseEntity.ok().body(list);

	}

	@GetMapping(value = "/{id}")
	public ResponseEntity<ResidentDto> findById(@PathVariable Long id) {
		ResidentDto dto = service.findById(id);
		return ResponseEntity.ok().body(dto);
	}
	
	@PostMapping
	public ResponseEntity<ResidentDto> insert(@RequestBody ResidentDto dto) {
		dto = service.insert(dto);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
				.buildAndExpand(dto.getId()).toUri();
		return ResponseEntity.created(uri).body(dto);
	}

	@PutMapping(value = "/{id}")
	public ResponseEntity<ResidentDto> update(@PathVariable Long id, @RequestBody ResidentDto dto) {
		dto = service.update(id, dto);
		return ResponseEntity.ok().body(dto);
	}

	@DeleteMapping(value = "/{id}")
	public ResponseEntity<Void> delete(@PathVariable Long id) {
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
} 
