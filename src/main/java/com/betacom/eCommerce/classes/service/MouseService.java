package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iMouseRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MouseService implements iMouseService{

    @Autowired
    private iMouseRepository mouseRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(ProductRequest req) {
//        MousePojo pojo = null ;
//        for(int i=0; i< req.getQuantity();i++ ) {
//            pojo = new MousePojo();
//            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
//            pojo.setProduct(product.get());
//            pojo.setCart(req.getCart());
//        }
//        mouseRepo.save(pojo);
    }

    @Override
    public void update(ProductRequest req) {
        Optional<MousePojo> opt= mouseRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        mouseRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) {
        mouseRepo.delete(mouseRepo.findById(id).get());

    }

    @Override
    public List<MouseView> list() {
        return transformInView( mouseRepo.findAll());
    }

    public List<MouseView> transformInView(List<MousePojo> pojo) {
        return pojo.stream().map(s -> {
            MouseView view = new MouseView();
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
    public MouseView getById(Integer id) {
        return transformInView(mouseRepo.findById(id).get());
    }

    public MouseView transformInView( MousePojo pojo) {
        MouseView view = new MouseView();
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