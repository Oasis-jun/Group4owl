package com.web.web_spingboot.mapper;

import com.web.web_spingboot.entity.Energy;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface EnergyMapper {

    @Insert("INSERT INTO energy (user_name, energy, date) VALUES (#{user_name}, #{energy}, #{date})")
    void insertEnergy(Energy energy);

    @Select("SELECT USER_NAME,DATE, SUM(ENERGY) AS ENERGY FROM ENERGY GROUP BY USER_NAME, DATE ORDER BY DATE, USER_NAME")
    List<Energy> getUsersEnergyByDate();

    @Select("SELECT USER_NAME, SUM(ENERGY) AS ENERGY FROM ENERGY GROUP BY USER_NAME ORDER BY ENERGY DESC")
    List<Energy> getUsersEnergySum();
}
