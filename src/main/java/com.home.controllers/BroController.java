package com.home.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BroController {

    @RequestMapping("/get-cricketbat")
    public String giveCricketBat() {
        return "MRFCricketBat";
    }
}
