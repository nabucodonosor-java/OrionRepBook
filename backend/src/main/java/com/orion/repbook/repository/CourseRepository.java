package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {

}
