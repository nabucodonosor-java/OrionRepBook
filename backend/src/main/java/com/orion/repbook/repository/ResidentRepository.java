package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Resident;

@Repository
public interface ResidentRepository extends JpaRepository<Resident, Long> {

}
