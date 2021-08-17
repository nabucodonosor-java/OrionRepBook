package com.orion.repbook.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;

import com.orion.repbook.entities.Republica;
import com.orion.repbook.entities.Resident;

public class ResidentDto implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;
	private String imgUrl;
	private String name;
	private String nickname;
	private Integer entryYear;
	private Integer outgoingYear;

	private CourseDto course;

	private UniversityDto university;

	private List<RepublicaDto> republicas = new ArrayList<>();

	public ResidentDto() {
	}

	public ResidentDto(Resident entity) {
		id = entity.getId();
		imgUrl = entity.getImgUrl();
		name = entity.getName();
		nickname = entity.getNickname();
		entryYear = entity.getEntryYear();
		outgoingYear = entity.getOutgoingYear();
		course = new CourseDto(entity.getCourse());
		university = new UniversityDto(entity.getUniversity());
	}

	public ResidentDto(Resident entity, Set<Republica> republicas) {
		this(entity);
		republicas.forEach(rep -> this.republicas.add(new RepublicaDto(rep)));
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getEntryYear() {
		return entryYear;
	}

	public void setEntryYear(Integer entryYear) {
		this.entryYear = entryYear;
	}

	public Integer getOutgoingYear() {
		return outgoingYear;
	}

	public void setOutgoingYear(Integer outgoingYear) {
		this.outgoingYear = outgoingYear;
	}

	public CourseDto getCourse() {
		return course;
	}

	public void setCourse(CourseDto course) {
		this.course = course;
	}

	public UniversityDto getUniversity() {
		return university;
	}

	public void setUniversity(UniversityDto university) {
		this.university = university;
	}

	public List<RepublicaDto> getRepublicas() {
		return republicas;
	}

	public static Page<ResidentDto> converter(Page<Resident> page) {
		return page.map(ResidentDto::new);
	}

}
