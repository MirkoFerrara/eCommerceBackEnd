package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iMotherboardRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MotherboardService implements iMotherboardService{

    @Autowired
    private iMotherboardRepository motherboardRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(MotherboardRequest req) throws Exception{
        MotherboardPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new MotherboardPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            pojo.setContained(req.getContained());
        }
        motherboardRepo.save(pojo);
    }


    @Override
    public void update(MotherboardRequest req) throws Exception{
        MotherboardPojo pojo = motherboardRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        motherboardRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) throws Exception{
        motherboardRepo.delete(motherboardRepo.findById(id).get());

    }

    @Override
    public List<MotherboardView> list() {
        List<MotherboardPojo> pojo = motherboardRepo.findAll();
        List<MotherboardPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }

    public List<MotherboardView> transformInView(List<MotherboardPojo> pojo) {
        return pojo.stream().map(s -> {
            MotherboardView view = new MotherboardView();
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
    public MotherboardView getById(Integer id) {
        return transformInView(motherboardRepo.findById(id).get());
    }

    public MotherboardView transformInView(MotherboardPojo pojo) {
            MotherboardView view = new MotherboardView();
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
