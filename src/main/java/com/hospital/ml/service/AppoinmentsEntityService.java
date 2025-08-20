package com.hospital.ml.service;

import com.hospital.ml.entity.AppointmentsEntity;
import com.hospital.ml.service.common.AbstractService;

import java.util.List;

public interface AppoinmentsEntityService extends AbstractService<AppointmentsEntity, Integer> {

    List<AppointmentsEntity> findAll();

    AppointmentsEntity save(AppointmentsEntity entity);
}