package com.hospital.ml.service.impl;

import com.hospital.ml.repository.DoctorsEntityRepository;
import com.hospital.ml.service.DoctorsEntityService;
import com.hospital.ml.entity.DoctorsEntity;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Log4j2
@Service
@RequiredArgsConstructor
public class DoctorsEntityServiceImpl implements DoctorsEntityService {

    private final DoctorsEntityRepository repository;

    @Override
    public JpaRepository<DoctorsEntity, Integer> getRepository() {
        return repository;
    }
}