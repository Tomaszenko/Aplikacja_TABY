package com.example.main.webapp.models;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by Tomek on 14.04.2017.
 */
public class DaneTurnusu {
    private int idTurnusu;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date data_r;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date data_k;
    private String miasto;
    private String nazwaPlacowki;
    private int telefonKoordynatora;
    private int telefonDyrektora;
    private int telefonPielegniarki;
    private int telefonKsiedza;

    public int getIdTurnusu() {
        return idTurnusu;
    }

    public void setIdTurnusu(int idTurnusu) {
        this.idTurnusu = idTurnusu;
    }

    public Date getData_r() {
        return data_r;
    }

    public void setData_r(Date data_r) {
        this.data_r = data_r;
    }

    public Date getData_k() {
        return data_k;
    }

    public void setData_k(Date data_k) {
        this.data_k = data_k;
    }

    public String getMiasto() {
        return miasto;
    }

    public void setMiasto(String miasto) {
        this.miasto = miasto;
    }

    public String getNazwaPlacowki() {
        return nazwaPlacowki;
    }

    public void setNazwaPlacowki(String nazwaPlacowki) {
        this.nazwaPlacowki = nazwaPlacowki;
    }

    public int getTelefonKoordynatora() {
        return telefonKoordynatora;
    }

    public void setTelefonKoordynatora(int telefonKoordynatora) {
        this.telefonKoordynatora = telefonKoordynatora;
    }

    public int getTelefonDyrektora() {
        return telefonDyrektora;
    }

    public void setTelefonDyrektora(int telefonDyrektora) {
        this.telefonDyrektora = telefonDyrektora;
    }

    public int getTelefonPielegniarki() {
        return telefonPielegniarki;
    }

    public void setTelefonPielegniarki(int telefonPielegniarki) {
        this.telefonPielegniarki = telefonPielegniarki;
    }

    public int getTelefonKsiedza() {
        return telefonKsiedza;
    }

    public void setTelefonKsiedza(int telefonKsiedza) {
        this.telefonKsiedza = telefonKsiedza;
    }
}
