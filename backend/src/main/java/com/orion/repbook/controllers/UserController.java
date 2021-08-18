package com.orion.repbook.controllers;

import java.net.URI;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.orion.repbook.dto.UriDto;
import com.orion.repbook.dto.UserDto;
import com.orion.repbook.dto.UserInsertDto;
import com.orion.repbook.dto.UserUpdateDto;
import com.orion.repbook.services.UserService;

@RestController
@RequestMapping(value = "/users")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping
	public ResponseEntity<Page<UserDto>> findAll(Pageable pageable) {
		Page<UserDto> list = service.findAllPaged(pageable);		
		return ResponseEntity.ok().body(list);
	}

	@GetMapping(value = "/{id}")
	public ResponseEntity<UserDto> findById(@PathVariable Long id) {
		UserDto dto = service.findById(id);
		return ResponseEntity.ok().body(dto);
	}
	
	@PostMapping
	public ResponseEntity<UserDto> insert(@RequestBody @Valid UserInsertDto dto) {
		UserDto newDto = service.insert(dto);
		URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
				.buildAndExpand(newDto.getId()).toUri();
		return ResponseEntity.created(uri).body(newDto);
	}

	@PutMapping(value = "/{id}")
	public ResponseEntity<UserDto> update(@PathVariable Long id, @RequestBody @Valid UserUpdateDto dto) {
		UserDto newDto = service.update(id, dto);
		return ResponseEntity.ok().body(newDto);
	}

	@DeleteMapping(value = "/{id}")
	public ResponseEntity<Void> delete(@PathVariable Long id) {
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
	
	@PostMapping("/image")
	public ResponseEntity<UriDto> uploadFile(@RequestParam("file") MultipartFile file) {
		UriDto dto = service.uploadFile(file);
		return ResponseEntity.ok().body(dto);
	}
} 
