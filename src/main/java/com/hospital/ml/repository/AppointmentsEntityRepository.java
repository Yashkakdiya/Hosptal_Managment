package com.hospital.ml.repository;

import com.hospital.ml.entity.AppointmentsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AppointmentsEntityRepository extends JpaRepository<AppointmentsEntity, Integer> {
}