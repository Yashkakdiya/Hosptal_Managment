package com.hospital.ml.service.impl;

import com.hospital.ml.entity.AppointmentsEntity;
import com.hospital.ml.entity.DoctorsEntity;
import com.hospital.ml.entity.PatientsEntity;
import com.hospital.ml.repository.AppointmentsEntityRepository;
import com.hospital.ml.service.AppoinmentsEntityService;
import com.hospital.ml.service.DoctorsEntityService;
import com.hospital.ml.service.PatientsEntityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Log4j2
@Service
@RequiredArgsConstructor
public class AppointmentsEntityServiceImpl implements AppoinmentsEntityService {

    private final AppointmentsEntityRepository repository;
    private final DoctorsEntityService doctorsEntityService;
    private final PatientsEntityService patientsEntityService;

    @Override
    public JpaRepository<AppointmentsEntity, Integer> getRepository() {
        return repository;
    }

    @Override
    public List<AppointmentsEntity> findAll() {
        return repository.findAll()
                .stream()
                .peek(appointmentsEntity -> {
                    DoctorsEntity doctorsEntity = doctorsEntityService.getOne(appointmentsEntity.getDoctorId());
                    appointmentsEntity.setDoctorName(doctorsEntity.getName());
                    PatientsEntity patientsEntity = patientsEntityService.getOne(appointmentsEntity.getPatientId());
                    appointmentsEntity.setPatientName(patientsEntity.getName());
                }).collect(Collectors.toList());
    }

    @Override
    public AppointmentsEntity save(AppointmentsEntity entity) {
        return repository.save(entity);
    }
}