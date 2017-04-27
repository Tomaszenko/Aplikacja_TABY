package com.example.main.webapp.models;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by Tomek on 27.04.2017.
 */
public class DodawanyTurnus {
    private int idTurnusu;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date data_r;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date data_k;
    private int idPlacowki;
    private int idKoordynatora;
    private int idDyrektora;
    private int idPielegniarki;
    private int idKsiedza;

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

    public int getIdPlacowki() {
        return idPlacowki;
    }

    public void setIdPlacowki(int idPlacowki) {
        this.idPlacowki = idPlacowki;
    }

    public int getIdKoordynatora() {
        return idKoordynatora;
    }

    public void setIdKoordynatora(int idKoordynatora) {
        this.idKoordynatora = idKoordynatora;
    }

    public int getIdDyrektora() {
        return idDyrektora;
    }

    public void setIdDyrektora(int idDyrektora) {
        this.idDyrektora = idDyrektora;
    }

    public int getIdPielegniarki() {
        return idPielegniarki;
    }

    public void setIdPielegniarki(int idPielegniarki) {
        this.idPielegniarki = idPielegniarki;
    }

    public int getIdKsiedza() {
        return idKsiedza;
    }

    public void setIdKsiedza(int idKsiedza) {
        this.idKsiedza = idKsiedza;
    }
}
