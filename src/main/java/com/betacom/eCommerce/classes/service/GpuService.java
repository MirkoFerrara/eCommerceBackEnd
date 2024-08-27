package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iGpuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iUserRepository;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class GpuService implements iGpuService {

    @Autowired
    private iGpuRepository gpuRepo;
    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iProductService productService;

    @Override
    public void create(GpuRequest req) throws Exception {

        GpuPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new GpuPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            pojo.setContained(req.getContained());
        }
        gpuRepo.save(pojo);
    }

    @Override
    public void update(GpuRequest req) throws Exception {
        GpuPojo pojo = gpuRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        gpuRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) throws Exception {
        gpuRepo.delete(gpuRepo.findById(id).get());

    }


    @Override
    public List<GpuView> list() {
        List<GpuPojo> pojo = gpuRepo.findAll();
        List<GpuPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }

    public List<GpuView> transformInView(List<GpuPojo> pojo) {
        return pojo.stream().map(s -> {
            GpuView view = new GpuView();
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
    public GpuView getById(Integer id) {
        return transformInView(gpuRepo.findById(id).get());
    }

    public GpuView transformInView(GpuPojo pojo) {
            GpuView view = new GpuView();
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
