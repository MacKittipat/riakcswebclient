package com.mac.riakcswebclient.webapp.controller;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.ObjectListing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "bucket")
public class BucketController {

    @Autowired
    AmazonS3Client amazonS3Client;

    /**
     * List all bucket.
     */
    @RequestMapping(value = "")
    public String listBucket(Model model) {
        List<Bucket> bucketList = amazonS3Client.listBuckets();
        model.addAttribute("bucketList", bucketList);
        model.addAttribute("pageContent", "bucket/list_bucket");
        return "layout";
    }

    /**
     * List all object in bucket.
     */
    @RequestMapping(value = "/{bucketName}")
    public String listObject(@PathVariable String bucketName, Model model) {
        ObjectListing objectListing = amazonS3Client.listObjects(bucketName);
        model.addAttribute("objectSummaries", objectListing.getObjectSummaries());
        model.addAttribute("pageContent", "bucket/list_object");
        return "layout";
    }
}