package com.hospital.ml.repository;

import com.hospital.ml.entity.PatientsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientsEntityRepository extends JpaRepository<PatientsEntity, Integer> {
}