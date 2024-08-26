package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.response.ResponseObject;
import com.betacom.eCommerce.interfaces.iService.iUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.betacom.eCommerce.classes.dto.request.UserRequest;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private iUserService service;

    @PostMapping("/create")
    public ResponseBase create(@RequestBody(required = true) UserRequest req){
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
    public Response<UserView> listAll(){
        Response<UserView> resp = new Response<UserView>();
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
    public ResponseBase update(@RequestBody(required = true) UserRequest req){
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
    public ResponseObject<UserView> getById(@RequestParam(required=true)Integer id){
        ResponseObject<UserView> res = new ResponseObject<UserView>();
        res.setRc(true);
        try {
            res.setDati(service.getById(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
    @GetMapping("/getByUsername")
    public ResponseObject<UserView> getByUsername(@RequestParam(required=true)String username){
        ResponseObject<UserView> res = new ResponseObject<UserView>();
        res.setRc(true);
        try {
            res.setDati(service.getByUsername(username));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
}
