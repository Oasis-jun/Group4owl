package com.web.web_spingboot.controller;

import com.web.web_spingboot.entity.Energy;
import com.web.web_spingboot.entity.User;
import com.web.web_spingboot.service.EnergyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/energy")
public class EnergyController {

    @Autowired
    private EnergyService energyService;

    @PostMapping("/steal")
    public String stealEnergy(@RequestBody Energy energyRequest) {

        energyService.saveEnergy(energyRequest);
        return "Energy increased by 10 points!";
    }

    @GetMapping("/getUsersEnergyByDate")
    public List<Energy> getUsersEnergyByDate() {
        return energyService.getUsersEnergyByDate();
    }
    @GetMapping("/getUsersEnergySum")
    public List<Energy> getUsersEnergySum() {
        return energyService.getUsersEnergySum();
    }
}
