package com.web.web_spingboot.service;

import com.web.web_spingboot.entity.Energy;

import java.util.List;

public interface EnergyService {
    void saveEnergy(Energy energy);

    List<Energy> getUsersEnergyByDate();

    List<Energy> getUsersEnergySum();
}
