package com.hospital.ml;

import lombok.extern.log4j.Log4j2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@Log4j2
@SpringBootApplication
public class HospitalApplication {

    public static void main(String[] args) {
        try {
            SpringApplication.run(HospitalApplication.class, args);
        } catch (Exception exception) {
            log.debug("Error accrued while starting the application");
        }
    }
}