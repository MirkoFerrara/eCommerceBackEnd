package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iMonitorRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMonitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MonitorService implements iMonitorService{

    @Autowired
    private iMonitorRepository monitorRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(MonitorRequest req) throws Exception{
        MonitorPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new MonitorPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
        }
        monitorRepo.save(pojo);
    }

    @Override
    public void update(MonitorRequest req) throws Exception{
        Optional<MonitorPojo> opt= monitorRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        monitorRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) {
        monitorRepo.delete(monitorRepo.findById(id).get());

    }
    @Override
    public List<MonitorView> list() {
        return transformInView( monitorRepo.findAll());
    }

    private List<MonitorView> transformInView(List<MonitorPojo> pojo) {
        return pojo.stream().map(s -> {
            MonitorView view = new MonitorView();
            view.setId(s.getId());
            view.setIdProduct(s.getProduct().getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            return view;
        }).toList();
    }

    @Override
    public MonitorView getById(Integer id) {
        return transformInView(monitorRepo.findById(id).get());
    }

    private MonitorView transformInView( MonitorPojo pojo) {
        MonitorView view = new MonitorView();
        view.setId(pojo.getId());
        view.setIdProduct(pojo.getProduct().getId());
        view.setBrand(pojo.getProduct().getBrand());
        view.setColour(pojo.getProduct().getColour());
        view.setDescription(pojo.getProduct().getDescription());
        view.setPrice(pojo.getProduct().getPrice());
        view.setModel(pojo.getProduct().getModel());
        return view;
    }
}
