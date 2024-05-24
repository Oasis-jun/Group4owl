package com.web.web_spingboot.service.serviceImpl;


import com.web.web_spingboot.entity.Energy;
import com.web.web_spingboot.mapper.EnergyMapper;
import com.web.web_spingboot.service.EnergyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnergyServiceImpl implements EnergyService {

    @Autowired
    private EnergyMapper energyMapper;

    @Override
    public void saveEnergy(Energy energy) {
        energyMapper.insertEnergy(energy);
    }

    @Override
    public List<Energy> getUsersEnergyByDate() {
        return energyMapper.getUsersEnergyByDate();
    }

    @Override
    public List<Energy> getUsersEnergySum() {
        return energyMapper.getUsersEnergySum();
    }
}
