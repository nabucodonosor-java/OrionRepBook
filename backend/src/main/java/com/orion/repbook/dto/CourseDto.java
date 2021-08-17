package com.orion.repbook.dto;

import java.io.Serializable;

import org.springframework.data.domain.Page;

import com.orion.repbook.entities.Course;

public class CourseDto implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;

	public CourseDto() {
	}

	public CourseDto(Course entity) {
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

	public static Page<CourseDto> converter(Page<Course> page) {
		return page.map(CourseDto::new);
		// return page.map(c -> new CourseDto(c));
	}

}
