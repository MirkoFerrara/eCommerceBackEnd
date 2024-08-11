package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.classes.pojo.KeyboardPojo;
import com.betacom.eCommerce.classes.pojo.LaptopPojo;
import com.betacom.eCommerce.classes.pojo.PcPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iLaptopRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iLaptopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LaptopService implements iLaptopService{

    @Autowired
    private iLaptopRepository laptopRepo;
    @Autowired
    private iProductRepository productRepo;
    @Override
    public void create(LaptopRequest req) throws Exception{
        LaptopPojo pojo=new LaptopPojo();
        Optional<ProductPojo> product=productRepo.findById(req.getId());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());

        laptopRepo.save(pojo);
    }

    @Override
    public void update(LaptopRequest req) {
        Optional<LaptopPojo> opt= laptopRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        laptopRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) {
        laptopRepo.delete(laptopRepo.findById(id).get());

    }

    @Override
    public List<LaptopView> list() {
        return transformInView( laptopRepo.findAll());
    }

    private List<LaptopView> transformInView(List<LaptopPojo> pojo) {
        return pojo.stream().map(s -> {
            LaptopView view = new LaptopView();
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
}
