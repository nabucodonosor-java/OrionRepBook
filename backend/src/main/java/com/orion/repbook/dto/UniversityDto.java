package com.orion.repbook.dto;

import java.io.Serializable;

import org.springframework.data.domain.Page;

import com.orion.repbook.entities.University;

public class UniversityDto implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;

	public UniversityDto() {
	}

	public UniversityDto(University entity) {
		id = entity.getId();
		name = entity.getName();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static Page<UniversityDto> converter(Page<University> page) {
		return page.map(UniversityDto::new);
		// return page.map(u -> new UniversityDto(u));
	}

}
