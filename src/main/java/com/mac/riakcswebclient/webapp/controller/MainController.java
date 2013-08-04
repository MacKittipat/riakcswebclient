package com.mac.riakcswebclient.webapp.controller;

import com.amazonaws.services.s3.AmazonS3Client;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    private static final Logger log = LoggerFactory.getLogger(MainController.class);

    @Autowired
    private AmazonS3Client amazonS3Client;

    /**
     * Front page.
     */
    @RequestMapping(value = {"/", "index"})
    public String index() {
        return "redirect:/bucket";
    }

    /**
     * View all bucket.
     */
    @RequestMapping(value = "bucket")
    public String bucket() {
        return "bucket";
    }
}
