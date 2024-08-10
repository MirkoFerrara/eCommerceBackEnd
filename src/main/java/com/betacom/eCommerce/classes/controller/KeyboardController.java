package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/keyboard")
public class KeyboardController {

    @PostMapping("/create")
    public void create(KeyboardRequest req)
    {

    }
}
