package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.interfaces.iService.iMonitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/monitor")
public class MonitorController {

    @Autowired
    private iMonitorService service;

    @PostMapping("/create")
    public ResponseBase create(MonitorRequest req){
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
