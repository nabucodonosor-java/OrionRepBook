package com.orion.repbook.dto;

import java.io.Serializable;

import org.springframework.data.domain.Page;

import com.orion.repbook.entities.Republica;

public class RepublicaDto implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String imgUrl;
	private String name;
	private Integer foundedIn;
	private boolean active;

	public RepublicaDto() {
	}

	public RepublicaDto(Republica entity) {
		id = entity.getId();
		imgUrl = entity.getImgUrl();
		name = entity.getName();
		foundedIn = entity.getFoundedIn();
		active = entity.isActive();
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

	public static Page<RepublicaDto> converter(Page<Republica> page) {
		return page.map(RepublicaDto::new);
	}

}
