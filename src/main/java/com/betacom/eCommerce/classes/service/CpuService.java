package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iCpuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CpuService implements iCpuService {

    @Autowired
    private iCpuRepository cpuRepo;
    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iProductService productService;

    @Override
    public void create(CpuRequest req) throws Exception {
        CpuPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new CpuPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setId(product.get().getId());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            pojo.setContained(req.getContained());
        }
        cpuRepo.save(pojo);
    }


    @Override
    public void update(CpuRequest req) throws Exception {
        CpuPojo pojo = cpuRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        cpuRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) throws Exception {
        cpuRepo.delete(cpuRepo.findById(id).get());
    }

    @Override
    public List<CpuView> list() {
        List<CpuPojo> pojo = cpuRepo.findAll();
        List<CpuPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }


    public List<CpuView> transformInView(List<CpuPojo> pojo) {
        return pojo.stream().map(s -> {
            CpuView view = new CpuView();
            view.setId(s.getId());
            view.setIdProduct(s.getProduct().getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            return view;
        }).collect(Collectors.toList());
    }

    @Override
    public CpuView getById(Integer id) {
        return transformInView(cpuRepo.findById(id).get());
    }

    @Override
    public CpuView transformInView( CpuPojo pojo) {
        CpuView view = new CpuView();
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

