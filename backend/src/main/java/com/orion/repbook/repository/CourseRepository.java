package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.orion.repbook.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {

}
