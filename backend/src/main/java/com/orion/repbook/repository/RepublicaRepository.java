package com.orion.repbook.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Republica;

@Repository
public interface RepublicaRepository extends JpaRepository<Republica, Long> {
	
	@Query("SELECT obj FROM Republica obj WHERE (LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%'))) ")
	Page<Republica> find(String name, Pageable pageable);
	

}
