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
    @Autowired
    private iMouseService mouseService;
    @Autowired
    private iCoolerService coolerService;
    @Autowired
    private iCpuService cpuService;
    @Autowired
    private iGpuService gpuService;
    @Autowired
    private iKeyboardService keyboardService;
    @Autowired
    private iPsuService psuService;
    @Autowired
    private iMonitorService monitorService;
    @Autowired
    private iMotherboardService motherboardService;
    @Autowired
    private iRamService ramService;
    @Autowired
    private iMemoryService memoryService;

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
        Response<ProductView> resp = new Response<ProductView>();
        resp.setRc (true);
        try{
            resp.setDati (service.list(item));
        }catch(Exception e){
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @PostMapping("/remove")
    public ResponseBase remove(@RequestParam(required = true) Integer id,@RequestParam(required=true)String item){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            if(item.equalsIgnoreCase("product"))
                service.remove(id);
            else if(item.equalsIgnoreCase("psu"))
                psuService.remove(id);
            else if(item.equalsIgnoreCase("mouse"))
                mouseService.remove(id);
            else if(item.equalsIgnoreCase("monitor"))
                monitorService.remove(id);
            else if(item.equalsIgnoreCase("cpu"))
                cpuService.remove(id);
            else if(item.equalsIgnoreCase("gpu"))
                gpuService.remove(id);
            else if(item.equalsIgnoreCase("motherboard"))
                motherboardService.remove(id);
            else if(item.equalsIgnoreCase("keyboard"))
                keyboardService.remove(id);
            else if(item.equalsIgnoreCase("cooler"))
                coolerService.remove(id);
            else if(item.equalsIgnoreCase("ram"))
                ramService.remove(id);
            else if(item.equalsIgnoreCase("memory"))
                memoryService.remove(id);
        } catch (Exception e) {
            resp.setRc(false);
            resp.setMsg(e.getMessage());
        }
        return resp;
    }

    @PostMapping("/update")
    public ResponseBase update(@RequestBody(required = true) ProductRequest req){
        ResponseBase resp=new ResponseBase();
        resp.setRc(true);
        try {
            if(req.getItem().equalsIgnoreCase("product"))
                service.update(req);
            else if(req.getItem().equalsIgnoreCase("psu"))
                psuService.update(req);
            else if(req.getItem().equalsIgnoreCase("mouse"))
                mouseService.update(req);
            else if(req.getItem().equalsIgnoreCase("monitor"))
                monitorService.update(req);
            else if(req.getItem().equalsIgnoreCase("cpu"))
                cpuService.update(req);
            else if(req.getItem().equalsIgnoreCase("gpu"))
                gpuService.update(req);
            else if(req.getItem().equalsIgnoreCase("motherboard"))
                motherboardService.update(req);
            else if(req.getItem().equalsIgnoreCase("keyboard"))
                keyboardService.update(req);
            else if(req.getItem().equalsIgnoreCase("cooler"))
                coolerService.update(req);
            else if(req.getItem().equalsIgnoreCase("ram"))
                ramService.update(req);
            else if(req.getItem().equalsIgnoreCase("memory"))
                memoryService.update(req);
        } catch (Exception e) {
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
}
