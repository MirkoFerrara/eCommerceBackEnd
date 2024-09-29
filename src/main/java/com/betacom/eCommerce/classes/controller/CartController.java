package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.betacom.eCommerce.classes.response.*;

@RestController
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private iCartService service;

    @GetMapping("/getById")
    public ResponseObject<CartView> getById(@RequestParam(required = true)Integer id){
        ResponseObject<CartView> res = new ResponseObject<CartView>();
        res.setRc(true);
        try {
            res.setDati(service.getById(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }

    @PostMapping("/create")
    public ResponseBase create(@RequestBody(required = true) CartRequest req){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.create(req);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }
    @PostMapping("/remove")
    public ResponseBase remove(@RequestBody(required = true) CartRequest req){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.removeFromCart(req);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @GetMapping("/list")
    public Response<CartView>list(@RequestParam (required = true) String username){
        Response<CartView> resp = new Response<CartView>();
        resp.setRc(true);
        try {
            resp.setDati(service.list(username)); // id dello user
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @GetMapping("/listSelectedProducts")
    public Response<CartView>listSelectedProducts(@RequestParam (required = true) String username){
        Response<CartView> resp = new Response<CartView>();
        resp.setRc(true);
        try {
            resp.setDati(service.listSelectedProducts(username)); // id dello user
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @GetMapping("/select")
    public ResponseBase select(@RequestParam (required = true) Integer id) {
        ResponseBase res = new ResponseBase();
        res.setRc(true);
        try {
            service.select(id);
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }

    @GetMapping("/purchaseConfirmed")
    public ResponseBase purchaseConfirmed(@RequestParam (required = true) String username ) {
        ResponseBase res = new ResponseBase();
        res.setRc(true);
        try {
            service.purchaseConfirmed(username);
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
}
