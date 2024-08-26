package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iRamRepository;
import com.betacom.eCommerce.interfaces.iService.iRamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RamService implements iRamService{

    @Autowired
    private iRamRepository ramRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(RamRequest req) {
        RamPojo pojo=new RamPojo();
        Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        ramRepo.save(pojo);
    }

    @Override
    public void update(RamRequest req) {
        RamPojo pojo = ramRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        ramRepo.save(pojo);
    }

    @Override
    public void remove(Integer id) {
        ramRepo.delete(ramRepo.findById(id).get());
    }

    @Override
    public List<RamView> list() {
        List<RamPojo> pojo = ramRepo.findAll();
        List<RamPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }

    public List<RamView> transformInView(List<RamPojo> gpu) {
        return gpu.stream().map(s -> {
            RamView view = new RamView();
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
    public RamView getById(Integer id) {
        return transformInView(ramRepo.findById(id).get());
    }

    public RamView transformInView( RamPojo pojo) {
        RamView view = new RamView();
        view.setId(pojo.getId());
        view.setIdProduct(pojo.getProduct().getId());
        view.setBrand(pojo.getProduct().getBrand());
        view.setColour(pojo.getProduct().getColour());
        view.setDescription(pojo.getProduct().getDescription());
        view.setPrice(pojo.getProduct().getPrice());
        view.setModel(pojo.getProduct().getModel());
        return view;
    }
    @Override
    public List<RamView> listByIdProduct(Integer idProduct) {
        return transformInView(ramRepo.findByProduct(idProduct));
    }
}
