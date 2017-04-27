package com.example.main.webapp.models;

import java.util.Date;

/**
 * Created by Tomek on 27.04.2017.
 */
public class Ksiadz {
    private int idKsiedza;
    private String imie;
    private String nazwisko;
    private Date data_urodzenia;
    private Date data_swiecen;
    private String parafia;
    private int nr_telefonu;
    private String miasto;
    private String ulica;

    public int getIdKsiedza() {
        return idKsiedza;
    }

    public void setIdKsiedza(int idKsiedza) {
        this.idKsiedza = idKsiedza;
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

    public Date getData_swiecen() {
        return data_swiecen;
    }

    public void setData_swiecen(Date data_swiecen) {
        this.data_swiecen = data_swiecen;
    }

    public String getParafia() {
        return parafia;
    }

    public void setParafia(String parafia) {
        this.parafia = parafia;
    }

    public int getNr_telefonu() {
        return nr_telefonu;
    }

    public void setNr_telefonu(int nr_telefonu) {
        this.nr_telefonu = nr_telefonu;
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
}
