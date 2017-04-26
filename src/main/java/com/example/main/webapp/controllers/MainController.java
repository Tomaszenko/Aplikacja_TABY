package com.example.main.webapp.controllers;

import com.example.main.webapp.models.Podopieczny;
import com.example.main.webapp.PodopiecznyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Tomek on 25.03.2017.
 */

@Controller
@RequestMapping("/")
public class MainController {

    @Autowired
    private PodopiecznyDAO dao;

    //@RequestMapping("/home")
    @RequestMapping("/")
    public String index() {
        Podopieczny fbl=dao.pobierzPodopiecznego(1);
        System.out.println("Numer na koszulce: "+fbl.getId());
        System.out.println("Imię i nazwisko: "+fbl.getName());
        System.out.println("Wiek: "+fbl.getAge());
        return "index";
    }

    @RequestMapping(value="view_register.htm", method = RequestMethod.GET)
    /** Navigates to the register page */
    public String rejestracja(ModelMap model) {
        return "register";
    }

    @RequestMapping(value="o_nas", method = RequestMethod.GET)
    /** Handles request from the registration page and registers the user */
    public String info() {
        return "o_nas";
    }

    @RequestMapping(value="wolontariusze", method = RequestMethod.GET)
    /** Handles request from the registration page and registers the user */
    public String wolontariusze() {
        return "wolontariusze";
    }

    @RequestMapping(value="podopieczni", method = RequestMethod.GET)
    /** Handles request from the registration page and registers the user */
    public String podopieczni() {
        return "podopieczni";
    }

    @RequestMapping(value="kontakt", method = RequestMethod.GET)
    /** Handles request from the registration page and registers the user */
    public String kontakt() {
        return "kontakt";
    }

    @RequestMapping(value="logowanie", method = RequestMethod.GET)
    /** Handles request from the registration page and registers the user */
    public String logowanie() {
        return "logowanie";
    }
}
