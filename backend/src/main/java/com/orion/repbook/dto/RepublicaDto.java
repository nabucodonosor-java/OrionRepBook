package com.orion.repbook.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;

import com.orion.repbook.entities.Republica;
import com.orion.repbook.entities.Resident;

public class RepublicaDto implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String imgUrl;
	private String name;
	private Integer foundedIn;
	private boolean active;
	
	private List<ResidentDto> residents = new ArrayList<>();

	public RepublicaDto() {
	}

	public RepublicaDto(Republica entity) {
		id = entity.getId();
		imgUrl = entity.getImgUrl();
		name = entity.getName();
		foundedIn = entity.getFoundedIn();
		active = entity.isActive();
	}
	
	public RepublicaDto(Republica entity, Set<Resident> residents) {
		this(entity);
		residents.forEach(r -> this.getResidents().add(new ResidentDto(r)));
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

	public Integer getFoundedIn() {
		return foundedIn;
	}

	public void setFoundedIn(Integer foundedIn) {
		this.foundedIn = foundedIn;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	public List<ResidentDto> getResidents() {
		return residents;
	}

	public static Page<RepublicaDto> converter(Page<Republica> page) {
		return page.map(r -> new RepublicaDto(r, r.getResidents()));
	}

}
