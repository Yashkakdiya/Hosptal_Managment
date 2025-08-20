package com.hospital.ml.controller;

import com.hospital.ml.entity.DoctorsEntity;
import com.hospital.ml.service.DoctorsEntityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/doctors")
@RequiredArgsConstructor
public class DoctorsController {

    private final DoctorsEntityService service;

    @GetMapping("/all")
    public String all(Model model) {
        List<DoctorsEntity> doctorList = service.findAll();
        model.addAttribute("doctors", doctorList);

        return "doctors";
    }
}