package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.response.ResponseObject;
import com.betacom.eCommerce.interfaces.iService.iRamService;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/ram")
public class RamController {

    @Autowired
    private iRamService service;

    @PostMapping("/create")
    public ResponseBase create(@RequestBody(required=true)RamRequest req){
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
    public Response<RamView> listAll(){
        Response<RamView> resp = new Response<RamView>();
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
    public ResponseBase update(@RequestBody(required = true) RamRequest req){
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
    public ResponseObject<RamView> getById(@RequestParam(required=true)Integer id){
        ResponseObject<RamView> res = new ResponseObject<RamView>();
        res.setRc(true);
        try {
            res.setDati(service.getById(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }

    @GetMapping("/listByIdProduct")
    public Response<RamView> listByIdProduct(@RequestParam(required=true)Integer id){
        Response<RamView> res = new Response<RamView>();
        res.setRc(true);
        try {
            res.setDati(service.listByIdProduct(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
}
