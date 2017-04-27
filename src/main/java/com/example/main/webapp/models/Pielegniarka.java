package com.example.main.webapp.models;

import java.util.Date;

/**
 * Created by Tomek on 27.04.2017.
 */
public class Pielegniarka {
    private int idPielegniarki;
    private String imie;
    private String nazwisko;
    private Date data_urodzenia;
    private String miasto;
    private String ulica;
    private int nr_telefonu;
    private String wyksztalcenie;
    private int nr_zaswiadczenia_pwz;
    private String haslo;

    public int getIdPielegniarki() {
        return idPielegniarki;
    }

    public void setIdPielegniarki(int idPielegniarki) {
        this.idPielegniarki = idPielegniarki;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public Date getData_urodzenia() {
        return data_urodzenia;
    }

    public void setData_urodzenia(Date data_urodzenia) {
        this.data_urodzenia = data_urodzenia;
    }

    public String getMiasto() {
        return miasto;
    }

    public void setMiasto(String miasto) {
        this.miasto = miasto;
    }

    public String getUlica() {
        return ulica;
    }

    public void setUlica(String ulica) {
        this.ulica = ulica;
    }

    public int getNr_telefonu() {
        return nr_telefonu;
    }

    public void setNr_telefonu(int nr_telefonu) {
        this.nr_telefonu = nr_telefonu;
    }

    public String getWyksztalcenie() {
        return wyksztalcenie;
    }

    public void setWyksztalcenie(String wyksztalcenie) {
        this.wyksztalcenie = wyksztalcenie;
    }

    public int getNr_zaswiadczenia_pwz() {
        return nr_zaswiadczenia_pwz;
    }

    public void setNr_zaswiadczenia_pwz(int nr_zaswiadczenia_pwz) {
        this.nr_zaswiadczenia_pwz = nr_zaswiadczenia_pwz;
    }

    public String getHaslo() {
        return haslo;
    }

    public void setHaslo(String haslo) {
        this.haslo = haslo;
    }
}
