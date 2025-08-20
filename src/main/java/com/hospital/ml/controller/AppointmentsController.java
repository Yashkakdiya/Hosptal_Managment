package com.hospital.ml.controller;

import com.hospital.ml.dto.Appoinments;
import com.hospital.ml.entity.AppointmentsEntity;
import com.hospital.ml.entity.DoctorsEntity;
import com.hospital.ml.entity.PatientsEntity;
import com.hospital.ml.service.AppoinmentsEntityService;
import com.hospital.ml.service.DoctorsEntityService;
import com.hospital.ml.service.PatientsEntityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Log4j2
@Controller
@RequiredArgsConstructor
@RequestMapping("/appointments")
public class AppointmentsController {

    private final AppoinmentsEntityService service;
    private final PatientsEntityService patientsEntityService;
    private final AppoinmentsEntityService appoinmentsEntityService;

    @GetMapping("/all")
    public String all(Model model) {
        List<AppointmentsEntity> appointmentsEntityList = service.findAll();
        model.addAttribute("appointments", appointmentsEntityList);

        return "appointments";
    }

    @PostMapping("/save-appoinments")
    public ResponseEntity<String> saveAppoinments(@RequestBody Appoinments appoinments) {
        log.debug("inside saveAppoinments appoinments: {}", appoinments);

        PatientsEntity patientsEntity = new PatientsEntity();
        patientsEntity.setName(appoinments.getName());
        patientsEntity.setEmail(appoinments.getEmail());

        PatientsEntity save = patientsEntityService.save(Collections.singletonList(patientsEntity)).get(0);

        AppointmentsEntity appointmentsEntity = new AppointmentsEntity();
        appointmentsEntity.setAppointmentDate(appoinments.getTime());
        appointmentsEntity.setDoctorId(Integer.valueOf(appoinments.getDoctor()));
        appointmentsEntity.setPatientId(save.getId());
        appoinmentsEntityService.save(appointmentsEntity);

        return ResponseEntity.ok("Appointment created successfully.");
    }
}