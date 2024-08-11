package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iPcRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iPcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PcService implements iPcService{

    @Autowired
    private iPcRepository pcRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(PcRequest req) throws Exception{
        PcPojo pojo=new PcPojo();
        Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        pcRepo.save(pojo);
    }

    @Override
    public void update(PcRequest req) throws Exception {
        Optional<PcPojo> opt= pcRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        pcRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id)throws Exception {
        pcRepo.delete(pcRepo.findById(id).get());

    }

    @Override
    public List<PcView> list() {
        return transformInView( pcRepo.findAll());
    }

    private List<PcView> transformInView(List<PcPojo> pojo) {
        return pojo.stream().map(s -> {
            PcView view = new PcView();
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
    public PcView getById(Integer id) {
        return transformInView(pcRepo.findById(id).get());
    }

    private PcView transformInView( PcPojo pojo) {
        PcView view = new PcView();
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
