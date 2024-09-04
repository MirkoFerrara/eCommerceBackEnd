package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.classes.pojo.PsuPojo;
import com.betacom.eCommerce.interfaces.iRepository.iPsuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iProductService;
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
    @Autowired
    iProductService productService;


    @Override
    public void create(ProductRequest req) throws Exception{
//
//        ProductPojo product ;
//
//        if(req.getIdProduct()== null){
//            productService.create(req);
//            //findByOgniCaratteristiaDellaRigaDelProdotto();
//            product = productRepo.findById(req.getIdProduct()).get();
//        }
//        else
//             product = productRepo.findById(req.getIdProduct()).get();
//
//        PsuPojo pojo = null ;
//            for(int i=0; i< req.getQuantity();i++ ) {
//                pojo = new PsuPojo();
//                pojo.setProduct(product);
//                pojo.setCart(req.getCart());
//            }
    }

    @Override
    public void update(ProductRequest req) throws Exception {
        Optional<PsuPojo> opt= psuRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        psuRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id)throws Exception {
        psuRepo.delete(psuRepo.findById(id).get());

    }

    @Override
    public List<PsuView> list() {
        return transformInView( psuRepo.findAll());
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
