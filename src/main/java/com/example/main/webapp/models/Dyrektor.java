package com.example.main.webapp.models;

/**
 * Created by Tomek on 26.04.2017.
 */
public class Dyrektor {
    private int idDyrektora;
    private String imie;
    private String nazwisko;
    private int nrTelefonu;

    public int getIdDyrektora() {
        return idDyrektora;
    }

    public void setIdDyrektora(int idDyrektora) {
        this.idDyrektora = idDyrektora;
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

    public int getNrTelefonu() {
        return nrTelefonu;
    }

    public void setNrTelefonu(int nrTelefonu) {
        this.nrTelefonu = nrTelefonu;
    }

}
