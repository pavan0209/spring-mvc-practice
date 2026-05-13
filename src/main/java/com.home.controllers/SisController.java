package com.home.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sis")
public class SisController {

    @ResponseBody
    @RequestMapping("/get-makeup")
    public String getMakeUpKit() {
        return "take this make up kit......";
    }

    @ResponseBody
    @RequestMapping("/book")
    public String getBooks() {
        return "Science Book";
    }
}
