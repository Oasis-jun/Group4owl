package com.web.web_spingboot.entity;

import java.time.LocalDate;

public class Energy {

    private Long id;
    private String user_name;
    private int energy;
    private LocalDate date;

    public Energy() {
    }

    public Energy(Long id, String user_name, int energy, LocalDate date) {
        this.id = id;
        this.user_name = user_name;
        this.energy = energy;
        this.date = date;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser_name() { // 修改方法名为 getUser_name()
        return user_name;
    }

    public void setUser_name(String user_name) { // 修改方法名为 setUser_name()
        this.user_name = user_name;
    }

    public int getEnergy() {
        return energy;
    }

    public void setEnergy(int energy) {
        this.energy = energy;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
}
