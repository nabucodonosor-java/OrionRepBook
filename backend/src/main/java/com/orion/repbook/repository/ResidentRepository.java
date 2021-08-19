package com.orion.repbook.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Republica;
import com.orion.repbook.entities.Resident;

@Repository
public interface ResidentRepository extends JpaRepository<Resident, Long> {
	
	@Query("SELECT DISTINCT obj FROM Resident obj INNER JOIN obj.republicas rep WHERE "
			+ "(COALESCE(:republicas) IS NULL OR rep IN :republicas) AND "
			+ "(LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%'))) ")
	Page<Resident> find(List<Republica> republicas, String name, Pageable pageable);
	
	@Query("SELECT obj FROM Resident obj JOIN FETCH obj.republicas WHERE obj IN :residents")
	List<Resident> find(List<Resident> residents);
	
}
