package com.orion.repbook.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {
	
	@Query("SELECT obj FROM Course obj WHERE (LOWER(obj.name) LIKE LOWER(CONCAT('%',:name,'%'))) ")
	Page<Course> find(String name, Pageable pageable);

}
