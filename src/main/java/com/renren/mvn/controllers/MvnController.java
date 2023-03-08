package com.renren.mvn.controllers;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("mvn")
public class MvnController {

    @GetMapping("test/{id}")
    public  String test(@PathVariable String id) {
        return "hell, mvn to" + id;
    }

}
