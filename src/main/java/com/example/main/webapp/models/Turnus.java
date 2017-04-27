package com.example.main.webapp.models;

import java.util.Date;

/**
 * Created by Tomek on 27.04.2017.
 */
public class Turnus {
    private int id_turnusu;
    private Date data_r;
    private Date data_k;
    private int id_placowki;
    private int id_koordynatora;
    private int id_ksiedza;
    private int id_pielegniarki;

    public int getId_turnusu() {
        return id_turnusu;
    }

    public void setId_turnusu(int id_turnusu) {
        this.id_turnusu = id_turnusu;
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

    public int getId_placowki() {
        return id_placowki;
    }

    public void setId_placowki(int id_placowki) {
        this.id_placowki = id_placowki;
    }

    public int getId_koordynatora() {
        return id_koordynatora;
    }

    public void setId_koordynatora(int id_koordynatora) {
        this.id_koordynatora = id_koordynatora;
    }

    public int getId_ksiedza() {
        return id_ksiedza;
    }

    public void setId_ksiedza(int id_ksiedza) {
        this.id_ksiedza = id_ksiedza;
    }

    public int getId_pielegniarki() {
        return id_pielegniarki;
    }

    public void setId_pielegniarki(int id_pielegniarki) {
        this.id_pielegniarki = id_pielegniarki;
    }
}
