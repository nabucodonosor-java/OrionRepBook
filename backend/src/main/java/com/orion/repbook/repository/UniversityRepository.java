package com.orion.repbook.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.University;

@Repository
public interface UniversityRepository extends JpaRepository<University, Long> {
	
	@Query("SELECT obj FROM University obj WHERE (LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%'))) ")
	Page<University> find(String name, Pageable pageable);

}
