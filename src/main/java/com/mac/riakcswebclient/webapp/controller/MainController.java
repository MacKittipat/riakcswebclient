package com.mac.riakcswebclient.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    /**
     * Front page.
     */
    @RequestMapping(value = {"/", "index"})
    public String index() {
        return "redirect:/bucket";
    }
}
