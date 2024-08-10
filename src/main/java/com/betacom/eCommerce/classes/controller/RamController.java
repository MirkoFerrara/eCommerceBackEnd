package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.interfaces.iService.iRamService;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.interfaces.iService.iSmartphoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ram")
public class RamController {

    @Autowired
    private iRamService service;

    @PostMapping("/create")
    public ResponseBase create(RamRequest req){
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
