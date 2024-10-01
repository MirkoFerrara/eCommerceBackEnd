package com.betacom.eCommerce.classes.controller;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.response.Response;
import com.betacom.eCommerce.classes.response.ResponseBase;
import com.betacom.eCommerce.classes.response.ResponseObject;
import com.betacom.eCommerce.interfaces.iService.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private iProductService service;

    @PostMapping("/create")
    public ResponseBase create(@RequestBody(required=true)ProductRequest req){
        ResponseBase resp = new ResponseBase();
        resp.setRc(true);
        try{
            service.create(req);
        }catch (Exception e){
            resp.setRc(false);
        }
        return resp;
    }
    @GetMapping("/list")
    public Response<ProductView> listAll(@RequestParam (required = true ) String item){
        Response<ProductView> resp = new Response<>();
        resp.setRc (true);
        try{
            resp.setDati (service.list(item));
        }catch(Exception e){
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }
    @GetMapping("/getById")
    public ResponseObject<ProductView> getById(@RequestParam(required=true)Integer id){
        ResponseObject<ProductView> res = new ResponseObject<ProductView>();
        res.setRc(true);
        try {
            res.setDati(service.getById(id));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }
    @PostMapping("/update")
    public ResponseBase update(@RequestBody(required = true) ProductRequest req){
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
    @PostMapping("/remove")
    public ResponseBase remove(@RequestParam(required = true) Integer id ){
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
    @GetMapping("/search")
    public Response<ProductView> search(@RequestParam(required=true) String search){
        Response<ProductView> res = new Response<ProductView>();
        res.setRc(true);
        try {
            res.setDati(service.search(search));
        } catch (Exception e) {
            res.setRc(false);
            res.setMsg(e.getMessage());
        }
        return res;
    }

    @GetMapping("/addProduct")
    public ResponseBase addProduct(@RequestParam (required = true ) Integer id , @RequestParam (required = true) Integer value){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            service.addProduct(id,value);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }
}
