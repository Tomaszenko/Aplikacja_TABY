package com.example.main.webapp.controllers;

import com.example.main.webapp.AdminDAO;
import com.example.main.webapp.KoordynatorDAO;
import com.example.main.webapp.models.DaneTurnusu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.ArrayDeque;
import java.util.ArrayList;

/**
 * Created by Tomek on 27.04.2017.
 */

@RequestMapping("/koordynator")
public class KoordynatorController {
    @Autowired
    private KoordynatorDAO dao;

    @RequestMapping("/login")
    public RedirectView koordLogin(@RequestParam("login") String login,
                                   @RequestParam("haslo") String haslo,
                                   HttpSession session) {
        if (!dao.zaloguj(login, haslo))
            return new RedirectView("/logowanie");
        session.setAttribute("user", login);
        return new RedirectView("/koordynator/home");
    }

    @RequestMapping("/logout")
    public RedirectView koordLogout(HttpSession session) {
        session.invalidate();
        return new RedirectView("/logowanie");
    }

    @RequestMapping("/home")
    public String koordHome(HttpSession session) {
        String userName = (String)session.getAttribute("user");
        ArrayList<DaneTurnusu> turnusy=dao.pobierzDaneTurnusow(userName);
        return "/logowanie";
    }
}
