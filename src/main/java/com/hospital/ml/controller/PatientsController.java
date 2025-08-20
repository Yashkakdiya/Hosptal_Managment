package com.hospital.ml.controller;

import com.hospital.ml.entity.PatientsEntity;
import com.hospital.ml.service.PatientsEntityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/patients")
public class PatientsController {

    private final PatientsEntityService service;

    @GetMapping("/all")
    public String allPatients(Model model) {
        List<PatientsEntity> patientsEntities = service.findAll();
        model.addAttribute("patients", patientsEntities);

        return "patients";
    }
}