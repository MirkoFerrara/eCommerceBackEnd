package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.PsuRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.response.ResponseObject;
import com.betacom.eCommerce.classes.service.CoolerService;
import com.betacom.eCommerce.classes.service.PsuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/psu")
public class PsuController {

    @Autowired
    private PsuService service;

    @PostMapping("/create")
    public ResponseBase create(PsuRequest req){
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
    public Response<PsuView> listAll(){
        Response<PsuView> resp = new Response<PsuView>();
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
    public ResponseBase update(@RequestBody(required = true) PsuRequest req){
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
    public ResponseObject<PsuView> getById(Integer id){
        ResponseObject<PsuView> res = new ResponseObject<PsuView>();
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
