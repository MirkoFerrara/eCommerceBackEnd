package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.classes.dto.view.SmartphoneView;
import com.betacom.eCommerce.classes.dto.view.TvView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iSmartphoneRepository;
import com.betacom.eCommerce.interfaces.iService.iSmartphoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SmartphoneService implements iSmartphoneService{

    @Autowired
    private iSmartphoneRepository smartphoneRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(SmartphoneRequest req) {
        SmartphonePojo pojo=new SmartphonePojo();
        Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        smartphoneRepo.save(pojo);
    }

    @Override
    public void update(SmartphoneRequest req) {
        Optional<SmartphonePojo> opt = smartphoneRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
    }

    @Override
    public void remove(Integer id) throws Exception {
        smartphoneRepo.delete(smartphoneRepo.findById(id).get());

    }
    @Override
    public List<SmartphoneView> list() {
        return transformInView( smartphoneRepo.findAll());
    }

    private List<SmartphoneView> transformInView(List<SmartphonePojo> pojo) {
        return pojo.stream().map(s -> {
            SmartphoneView view = new SmartphoneView();
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
    public SmartphoneView getById(Integer id) {
        return transformInView(smartphoneRepo.findById(id).get());
    }

    private SmartphoneView transformInView( SmartphonePojo pojo) {
        SmartphoneView view = new SmartphoneView();
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
