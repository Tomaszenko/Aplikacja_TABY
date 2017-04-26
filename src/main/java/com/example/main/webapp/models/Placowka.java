package com.example.main.webapp.models;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by Tomek on 26.04.2017.
 */
public class Placowka {
    private int idPlacowki;
    private String nazwa;
    private String ulica;
    private String miasto;
    private String kodPocztowy;

    public int getIdPlacowki() {
        return idPlacowki;
    }

    public void setIdPlacowki(int idPlacowki) {
        this.idPlacowki = idPlacowki;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public String getUlica() {
        return ulica;
    }

    public void setUlica(String ulica) {
        this.ulica = ulica;
    }

    public String getMiasto() {
        return miasto;
    }

    public void setMiasto(String miasto) {
        this.miasto = miasto;
    }

    public String getKodPocztowy() {
        return kodPocztowy;
    }

    public void setKodPocztowy(String kodPocztowy) {
        this.kodPocztowy = kodPocztowy;
    }
}
