package com.home.mycafe.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CafeController {

    @RequestMapping("/cafe")
    public String showWelcomePage(Model model) {

        // sending data to view(jsp page)
        String cafeName = "Prabhu's Cafe";
        String name = "Pavan Sonawane";
        String location = "Baner, Pune";
        model.addAttribute("cafeNameValue", cafeName);
        model.addAttribute("nameValue", name);
        model.addAttribute("locationValue", location);

        return "welcome-page";
    }

    @RequestMapping("/processOrder")
    public String processOrder(HttpServletRequest request, Model model) {

        String item = request.getParameter("foodItem");
        String cafeName = "Prabhu's Cafe";
        String name = "Pavan Sonawane";
        String location = "Baner, Pune";

        model.addAttribute("cafeNameValue", cafeName);
        model.addAttribute("nameValue", name);
        model.addAttribute("locationValue", location);
        model.addAttribute("orderItem", item);

        return "welcome-page";
    }
}
