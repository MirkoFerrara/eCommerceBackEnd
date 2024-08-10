package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.interfaces.iService.iMouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/mouse")
public class MouseController {

    @Autowired
    private iMouseService service;

    @PostMapping("/create")
    public ResponseBase create(MouseRequest req){
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
