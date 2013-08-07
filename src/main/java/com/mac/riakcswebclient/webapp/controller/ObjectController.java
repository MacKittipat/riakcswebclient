package com.mac.riakcswebclient.webapp.controller;

import com.amazonaws.services.s3.AmazonS3Client;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "object")
public class ObjectController {

    private static final Logger log = LoggerFactory.getLogger(ObjectController.class);

    @Autowired
    private AmazonS3Client amazonS3Client;

    // {key:.*} to accept key that is file name.
    @RequestMapping(value = "delete/{bucketName}/{key:.*}")
    public String delete(@PathVariable String bucketName, @PathVariable String key) {
        log.info("Deleting object {} in bucket {}", key, bucketName);
        amazonS3Client.deleteObject(bucketName, key);
        return "redirect:/bucket/info/" + bucketName;
    }
}
