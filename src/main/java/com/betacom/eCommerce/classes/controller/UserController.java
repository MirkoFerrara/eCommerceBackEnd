package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.interfaces.iService.iUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.betacom.eCommerce.classes.dto.request.UserRequest;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private iUserService service;

    @PostMapping("/create")
    public ResponseBase create(UserRequest req){
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
        resp.setDati (service.list());
        return resp;
    }
}
