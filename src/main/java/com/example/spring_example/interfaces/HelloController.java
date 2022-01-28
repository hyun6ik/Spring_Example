package com.example.spring_example.interfaces;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/ping")
    public String hello() {
        return "web-hook-test-success";
    }
}
