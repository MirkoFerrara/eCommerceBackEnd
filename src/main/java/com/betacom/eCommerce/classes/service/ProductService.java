package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService implements iProductService{

    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(ProductRequest req) {
    ProductPojo pojo=new ProductPojo();
        pojo.setItem(req.getItem());
        pojo.setBrand(req.getBrand());
        pojo.setDescription(req.getDescription());
        pojo.setModel(req.getModel());
        pojo.setPrice(req.getPrice());
        pojo.setColour(req.getColour());
    }

    @Override
    public void update(ProductRequest req) throws Exception {
        Optional<ProductPojo> opt=productRepo.findById(req.getIdProduct());
        if(opt.isEmpty())
            throw new Exception("il prodotto non esiste");

        opt.get().setPrice(req.getPrice());
        opt.get().setItem(req.getItem());
        opt.get().setColour(req.getColour());
        opt.get().setDescription(req.getDescription());
        opt.get().setModel(req.getModel());
        opt.get().setBrand(req.getBrand());
    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<ProductView> list() {
        return List.of();
    }
}
