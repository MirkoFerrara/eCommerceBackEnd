package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/motherboard")
public class MotherboardController {

    @Autowired
    private iMotherboardService service;

    @PostMapping("/create")
    public ResponseBase create(MotherboardRequest req){
        ResponseBase resp = new ResponseBase();
        resp.setRc(true);
        try{
            service.create(req);
        }catch (Exception e){
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }
}
