package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.betacom.eCommerce.classes.response.*;

@RestController
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private iCartService service;


    @PostMapping("/create")
    public ResponseBase create(@RequestBody(required = true) CartRequest req){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.create(req);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }
}
