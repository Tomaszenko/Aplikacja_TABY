package com.example.main.webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Tomek on 25.03.2017.
 */

@Controller
@RequestMapping("/minor")
public class FormController {

    @RequestMapping("/")
    public String func() {
        return "koordynator";
    }

    @RequestMapping("/processForm")
    public String obsluzFormularz() {
        System.out.println("kukulele");
        return "index";
    }

//    jedna wersja
//    @RequestMapping("/goodProcessor")
//    public String goodProcessor(HttpServletRequest request, Model model) {
//
//        String name=request.getParameter("footballer");
//
//        String message=name+", najlepszy napastnik Polski!";
//
//        model.addAttribute("message",message);
//
//        return "index";
//    }

    @RequestMapping("/goodProcessor")
    public String goodProcessor(@RequestParam("footballer") String fbName, Model model) {

        String message="Panie i Panowie, "+fbName+", najlepszy napastnik Polski!";

        model.addAttribute("message",message);

        return "index";
    }

}
