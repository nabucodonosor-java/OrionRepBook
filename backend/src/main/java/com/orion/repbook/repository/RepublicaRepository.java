package com.orion.repbook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.repbook.entities.Republica;

@Repository
public interface RepublicaRepository extends JpaRepository<Republica, Long> {

}
