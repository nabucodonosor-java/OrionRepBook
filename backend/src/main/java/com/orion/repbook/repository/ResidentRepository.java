package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.orion.repbook.entities.Resident;

public interface ResidentRepository extends JpaRepository<Resident, Long> {

}
