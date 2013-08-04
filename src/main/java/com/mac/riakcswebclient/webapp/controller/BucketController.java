package com.mac.riakcswebclient.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "bucket")
public class BucketController {

    @RequestMapping(value = "/")
    public String bucket(Model model) {
        model.addAttribute("pageContent", "bucket/index");
        return "layout";
    }
}
