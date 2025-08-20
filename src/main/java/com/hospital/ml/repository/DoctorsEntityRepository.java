package com.hospital.ml.repository;

import com.hospital.ml.entity.DoctorsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DoctorsEntityRepository extends JpaRepository<DoctorsEntity, Integer> {
}