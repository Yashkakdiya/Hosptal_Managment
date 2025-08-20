package com.hospital.ml.service.impl;

import com.hospital.ml.entity.DoctorsEntity;
import com.hospital.ml.entity.PatientsEntity;
import com.hospital.ml.repository.DoctorsEntityRepository;
import com.hospital.ml.repository.PatientsEntityRepository;
import com.hospital.ml.service.DoctorsEntityService;
import com.hospital.ml.service.PatientsEntityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Log4j2
@Service
@RequiredArgsConstructor
public class PatientsEntityServiceImpl implements PatientsEntityService {

    private final PatientsEntityRepository repository;

    @Override
    public JpaRepository<PatientsEntity, Integer> getRepository() {
        return repository;
    }
}