package com.hospital.ml.controller;

import com.hospital.ml.entity.DoctorsEntity;
import com.hospital.ml.service.DoctorsEntityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class EntryController {

    private final DoctorsEntityService service;

    @GetMapping("/")
    public String index(Model model) {
        List<DoctorsEntity> doctorList = service.findAll();
        model.addAttribute("doctors", doctorList);
        return "index";
    }

    @GetMapping("/free-checkup")
    public String freeCheckup() {
        return "free-checkup";
    }

    @GetMapping("/Dna")
    public String dna() {
        return "Dna";
    }

    @GetMapping("/naveen")
    public String naveen() {
        return "naveen";
    }

    @GetMapping("/yash")
    public String yash() {
        return "yash";
    }

    @GetMapping("/narayan")
    public String narayan() {
        return "narayan";
    }

    @GetMapping("/cardiogra")
    public String cardiogra() {
        return "cardiogra";
    }

    @GetMapping("/BloodBank")
    public String bloodbank() {
        return "BloodBank";
    }

    @GetMapping("/DonerForm")
    public String donerform() {
        return "DonerForm";
    }

}
