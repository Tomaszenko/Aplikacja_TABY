package com.example.main.webapp.controllers;

import com.example.main.webapp.AdminDAO;
import com.example.main.webapp.forms.KoordynatorWybor;
import com.example.main.webapp.models.DaneTurnusu;
import com.example.main.webapp.models.Koordynator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by Tomek on 07.04.2017.
 */

@Controller
@RequestMapping(value="/admin")
public class AdminController {

    @Autowired
    private AdminDAO dao;

    @RequestMapping(value="")
    public String adminWidok() {
        System.out.println("kukulele");
        return "adminlogin";
    }

    @RequestMapping(value = "/autoryzacja", method = RequestMethod.POST)
    public String adminAutoryzacja(@RequestParam("nazwa") String nazwa,
                                   @RequestParam("haslo") String haslo) {
        if(dao.zaloguj(nazwa,haslo))
            return "adminstrona";
        else
            return "adminlogin";
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping(value = "/koordynatorzy")
    public String adminPodgladKoordynatorow(/*@RequestParam(value="Koordynator")Optional<Koordynator> koordynator,*/ Model model) {
//        if(koordynator.isPresent())
//            dao.usunKoordynatora(koordynator.get());

        ArrayList<Koordynator> koordynatory=dao.pobierzKoordynatorow();
        for(Koordynator koord: koordynatory) {
            System.out.println(koord.getImie() + " " + koord.getNazwisko());
        }
        model.addAttribute("koordynatorzy", koordynatory);
        model.addAttribute("koordynator_edycja", new KoordynatorWybor());
        model.addAttribute("koordynator_usuniecie", new KoordynatorWybor());
        return "admin_koordynatorzy_zarzadzanie";
    }

    @RequestMapping(value="/koordynatorzy/edycja", method = RequestMethod.POST)
    public String adminEdycjaKoordynatora(@RequestParam("idkoord") int id_koordynatora, Model model) {
        System.out.println("W WIDOKU"+id_koordynatora);
        Koordynator koord=dao.pobierzKoordynatora(id_koordynatora);
        model.addAttribute("koordynator", koord);
        return "admin_koordynator_edycja";
    }

    @RequestMapping(value="/koordynatorzy/zmiana", method = RequestMethod.POST)
    public RedirectView adminZmianaKoordynatora(@ModelAttribute("koordynator") Koordynator koord, Model model) {
        System.out.println("W WIDOKU PRZED AKTUALIZACJĄ"+koord.getIdKoordynatora());
        dao.uaktualnijKoordynatora(koord);
        return new RedirectView("/admin/koordynatorzy");
    }

    @RequestMapping(value="/koordynatorzy/dodawanie", method = RequestMethod.GET)
    public String adminDodawanieKoordynatora(Model model) {
        model.addAttribute("koordynator",new Koordynator());
        return "admin_koordynatorzy_dodawanie";
    }

    @RequestMapping(value="/koordynatorzy/dodawanie", method = RequestMethod.POST)
    public RedirectView adminDodawanieKoordynatora(@ModelAttribute("koordynator") Koordynator koord, Model model) {
        dao.dodajKoordynatora(koord);
        return new RedirectView("/admin/koordynatorzy");
    }

    @RequestMapping(value="/koordynatorzy/usuwanie", method = RequestMethod.POST)
    public RedirectView adminUsuwanieKoordynatora(@RequestParam("idkoord") int id_koordynatora, Model model) {
        System.out.println("W WIDOKU"+id_koordynatora);
        dao.usunKoordynatora(id_koordynatora);
        return new RedirectView("/admin/koordynatorzy");
    }

    @RequestMapping(value = "/turnusy")
    public String adminTurnusy(Model model) {
//        ArrayList<Koordynator> koordynatory=dao.pobierzKoordynatorow();
//        for(Koordynator koord: koordynatory) {
//            System.out.println(koord.getImie() + " " + koord.getNazwisko());
//        }
//        model.addAttribute("koordynatorzy", koordynatory);
//        model.addAttribute("koordynator_edycja", new KoordynatorWybor());
//        model.addAttribute("koordynator_usuniecie", new KoordynatorWybor());
        return "admin_koordynatorzy";
    }

    @RequestMapping(value = "/turnusy_koordynatora")
    public String adminTurnusyKoordynatora(@RequestParam("idkoord") int id, Model model) {
        Koordynator koord=dao.pobierzKoordynatora(id);
        ArrayList<DaneTurnusu> turnusy=dao.pobierzTurnusyKoordynatora(id);
//        for(DaneTurnusu turnus: turnusy) {
//            System.out.println(koord.getImie() + " " + koord.getNazwisko());
//        }
        model.addAttribute("koordynator", koord);
        model.addAttribute("turnusy", turnusy);
//        model.addAttribute("koordynator_edycja", new KoordynatorWybor());
//        model.addAttribute("koordynator_usuniecie", new KoordynatorWybor());
        return "admin_turnusy_koordynatora";
    }
}
