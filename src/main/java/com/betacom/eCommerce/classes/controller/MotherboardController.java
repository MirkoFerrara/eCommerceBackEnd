package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.response.ResponseObject;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/list")
    public Response<MotherboardView> listAll(){
        Response<MotherboardView> resp = new Response<MotherboardView>();
        resp.setRc (true);
        try{
            resp.setDati (service.list());
        }catch(Exception e){
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @PostMapping("/remove")
    public ResponseBase remove(@RequestParam(required = true) Integer id){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.remove(id);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @PostMapping("/update")
    public ResponseBase update(@RequestBody(required = true) MotherboardRequest req){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.update(req);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @GetMapping("/getById")
    public ResponseObject<MotherboardView> getById(Integer id){
        ResponseObject<MotherboardView> res = new ResponseObject<MotherboardView>();
        res.setRc(true);
        try {
            res.setDati(service.getById(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
}
