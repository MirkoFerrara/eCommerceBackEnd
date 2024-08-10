package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.service.ProductService;
import com.betacom.eCommerce.interfaces.iService.iSmartphoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/smartphone")
public class SmartphoneController {

    @Autowired
    private iSmartphoneService service;

    @PostMapping("/create")
    public ResponseBase create(SmartphoneRequest req){
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
