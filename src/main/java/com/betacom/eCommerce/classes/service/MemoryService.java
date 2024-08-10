package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import com.betacom.eCommerce.classes.pojo.MemoryPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iMemoryRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMemoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MemoryService implements iMemoryService{

    @Autowired
    private iMemoryRepository memoryRepo;
    @Autowired
    private iProductRepository productRepo;
    @Override
    public void create(MemoryRequest req) throws Exception{
        Optional<MemoryPojo> opt=memoryRepo.findById(req.getId());
        if(opt.isPresent())
            throw new Exception("la memoria con quell'id  esiste gia");

        MemoryPojo pojo=new MemoryPojo();
        pojo.setId(req.getId());

        Optional<ProductPojo> product=productRepo.findById(req.getId());

        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        pojo.setContained(req.getContained());

        memoryRepo.save(pojo);

    }

    @Override
    public void update(MemoryRequest req) throws Exception{

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MemoryView> list() {
        return List.of();
    }
}
