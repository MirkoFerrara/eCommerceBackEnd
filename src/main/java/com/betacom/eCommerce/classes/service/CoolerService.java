package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.UserView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iCoolerRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import com.betacom.eCommerce.interfaces.iService.iCoolerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class CoolerService implements iCoolerService {

    @Autowired
    private iCoolerRepository coolerRepo;
    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iProductService productService;

    @Override
    public void update(CoolerRequest req)throws Exception
    {
        CoolerPojo pojo = coolerRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        coolerRepo.save(pojo);
    }



    @Override
    public void create(CoolerRequest req) throws Exception {
        CoolerPojo pojo = null;
        for (int i = 0; i < req.getQuantity(); i++) {
            pojo = new CoolerPojo();
            Optional<ProductPojo> productOpt = productRepo.findById(req.getIdProduct());

            if (productOpt.isPresent()) {
                ProductPojo product = productOpt.get();
                System.out.println(product + " ID FOUND");

                pojo.setProduct(product);
                pojo.setCart(req.getCart());
                pojo.setLaptopMounted(req.getLaptopMounted());
                pojo.setContained(req.getContained());
                coolerRepo.save(pojo);
            } else {
                System.out.println("Product with ID " + req.getIdProduct() + " not found.");
                throw new Exception("Product with ID " + req.getIdProduct() + " not found.");
            }
        }
    }

    @Override
    public void remove(Integer id) throws Exception {
        coolerRepo.delete(coolerRepo.findById(id).get());

    }

    @Override
    public List<CoolerView> list() {
        List<CoolerPojo> pojo = coolerRepo.findAll();
        List<CoolerPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }



    @Override
    public CoolerView getById(Integer id) {
        return transformInView(coolerRepo.findById(id).get());
    }

    @Override
    public CoolerView transformInView( CoolerPojo pojo) {
        CoolerView view = new CoolerView();
        view.setId(pojo.getId());
        view.setIdProduct(pojo.getProduct().getId());
        view.setBrand(pojo.getProduct().getBrand());
        view.setColour(pojo.getProduct().getColour());
        view.setDescription(pojo.getProduct().getDescription());
        view.setPrice(pojo.getProduct().getPrice());
        view.setModel(pojo.getProduct().getModel());
        return view;
    }

    public List<CoolerView> transformInView(List<CoolerPojo> pojo) {
        return pojo.stream().map(s -> {
            CoolerView view = new CoolerView();
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


}
