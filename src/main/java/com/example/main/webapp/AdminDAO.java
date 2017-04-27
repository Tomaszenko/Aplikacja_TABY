package com.example.main.webapp;

import com.example.main.webapp.models.*;

import java.util.ArrayList;

/**
 * Created by Tomek on 07.04.2017.
 */
public interface AdminDAO {
    public boolean zaloguj(String nazwa, String haslo);
    public ArrayList<Koordynator> pobierzKoordynatorow();
    public Koordynator pobierzKoordynatora(int koordynatorId);
    public void uaktualnijKoordynatora(Koordynator koordynator);
    public void usunKoordynatora(int koordynatorId);
    public void dodajKoordynatora(Koordynator koordynator);

    public ArrayList<DaneTurnusu> pobierzTurnusyKoordynatora(int koordId);

    public ArrayList<Placowka> pobierzPlacowki();
    public Dyrektor pobierzDyrektoraPlacowki(int placowkaId);
    public void ustawDyrektoraPlacowki(int placowkaId, int dyrektorId);

    public ArrayList<DaneTurnusu> pobierzTurnusy();

    public ArrayList<Ksiadz> pobierzKsiezy();
    public ArrayList<Pielegniarka> pobierzPielegniarki();
}
