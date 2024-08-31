package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PsuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.classes.pojo.PsuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;
import com.betacom.eCommerce.interfaces.iRepository.iPsuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iPsuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PsuService implements iPsuService {
    @Autowired
    private iPsuRepository psuRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(PsuRequest req) throws Exception{
        PsuPojo pojo = null ;
        Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new PsuPojo();
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            pojo.setContained((req.getContained()));
            psuRepo.save(pojo);
        }
    }



    @Override
    public void update(PsuRequest req) throws Exception {
        Optional<PsuPojo> opt= psuRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
            psuRepo.save(opt.get());

        }
    }

    @Override
    public void remove(Integer id)throws Exception {
        psuRepo.delete(psuRepo.findById(id).get());

    }

    @Override
    public List<PsuView> list() {
        List<PsuPojo> pojo = psuRepo.findAll();
        List<PsuPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }

    public List<PsuView> transformInView(List<PsuPojo> pojo) {
        return pojo.stream().map(s -> {
            PsuView view = new PsuView();
            view.setId(s.getId());
            view.setIdProduct(s.getProduct().getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            view.setCart(s.getCart());
            view.setContained(s.getContained());
            return view;
        }).toList();
    }
    @Override
    public PsuView getById(Integer id) {
        return transformInView(psuRepo.findById(id).get());
    }

    @Override
    public PsuView transformInView( PsuPojo pojo) {
        PsuView view = new PsuView();
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
