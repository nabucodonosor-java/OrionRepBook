package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.University;

@Repository
public interface UniversityRepository extends JpaRepository<University, Long> {

}
