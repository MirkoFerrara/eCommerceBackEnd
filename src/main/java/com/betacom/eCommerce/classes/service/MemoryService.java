package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.MemoryPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iMemoryRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMemoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class MemoryService implements iMemoryService{

    @Autowired
    private iMemoryRepository memoryRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(MemoryRequest req) throws Exception{
        MemoryPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new MemoryPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
            pojo.setContained(req.getContained());
        }
        memoryRepo.save(pojo);
    }

    @Override
    public void update(MemoryRequest req) throws Exception{
        MemoryPojo pojo = memoryRepo.findById(req.getId()).get();
        pojo.setCart(req.getCart());
        ProductPojo product=productRepo.findById(req.getId()).get();
        pojo.setProduct(product);
        pojo.setContained(req.getContained());
        memoryRepo.save(pojo);
    }


    @Override
    public void remove(Integer id) {
        memoryRepo.delete(memoryRepo.findById(id).get());

    }

    @Override
    public List<MemoryView> list() {
        List<MemoryPojo> pojo = memoryRepo.findAll();
        List<MemoryPojo> filteredPojo = pojo.stream()
                .filter(item -> !item.getContained())
                .toList();
        return transformInView(filteredPojo);
    }

    public List<MemoryView> transformInView(List<MemoryPojo> pojo) {
        return pojo.stream().map(s -> {
            MemoryView view = new MemoryView();
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
    public MemoryView getById(Integer id) {
        return transformInView(memoryRepo.findById(id).get());
    }

    public MemoryView transformInView( MemoryPojo pojo) {
        MemoryView view = new MemoryView();
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
