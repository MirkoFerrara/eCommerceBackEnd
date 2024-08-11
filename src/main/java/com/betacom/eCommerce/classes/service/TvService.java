package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.request.TvRequest;
import com.betacom.eCommerce.classes.dto.view.SmartphoneView;
import com.betacom.eCommerce.classes.dto.view.TvView;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.classes.pojo.SmartphonePojo;
import com.betacom.eCommerce.classes.pojo.TvPojo;
import com.betacom.eCommerce.classes.pojo.UserPojo;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iTvRepository;
import com.betacom.eCommerce.interfaces.iService.iTvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TvService implements iTvService{

    @Autowired
    private iTvRepository tvRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(TvRequest req) {
        TvPojo pojo=new TvPojo();
        Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        tvRepo.save(pojo);
    }

    @Override
    public void update(TvRequest req) {
        Optional<TvPojo> opt=tvRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        tvRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) throws Exception{
        tvRepo.delete(tvRepo.findById(id).get());
    }

    @Override
    public List<TvView> list() {
        return transformInView( tvRepo.findAll());
    }

    private List<TvView> transformInView(List<TvPojo> pojo) {
        return pojo.stream().map(s -> {
            TvView view = new TvView();
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
    public TvView getById(Integer id) {
        return transformInView(tvRepo.findById(id).get());
    }

    private TvView transformInView( TvPojo pojo) {
        TvView view = new TvView();
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
