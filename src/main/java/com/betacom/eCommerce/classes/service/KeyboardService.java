package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iKeyboardRepository;
import com.betacom.eCommerce.interfaces.iService.iKeyboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class KeyboardService implements iKeyboardService {

    @Autowired
    private iKeyboardRepository keyboardRepo;
    @Autowired
    private iProductRepository productRepo;
    @Override
    public void create(KeyboardRequest req) throws Exception{
        KeyboardPojo pojo = null ;
        for(int i=0;i<req.getQuantity();i++){
            pojo=new KeyboardPojo();
            Optional<ProductPojo> product=productRepo.findById(req.getId());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            keyboardRepo.save(pojo);
        }
    }

    @Override
    public void update(KeyboardRequest req) throws Exception {
        Optional<KeyboardPojo> opt=keyboardRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        keyboardRepo.save(opt.get());


    }

    @Override
    public void remove(Integer id) {
        keyboardRepo.delete(keyboardRepo.findById(id).get());
    }

    @Override
    public List<KeyboardView> list() {
        return transformInView( keyboardRepo.findAll());
    }

    private List<KeyboardView> transformInView(List<KeyboardPojo> pojo) {
        return pojo.stream().map(s -> {
            KeyboardView view = new KeyboardView();
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
    public KeyboardView getById(Integer id) {
        return transformInView(keyboardRepo.findById(id).get());
    }

    private KeyboardView transformInView( KeyboardPojo pojo) {
        KeyboardView view = new KeyboardView();
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
