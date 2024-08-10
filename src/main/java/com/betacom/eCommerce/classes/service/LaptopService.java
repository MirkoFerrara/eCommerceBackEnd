package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.classes.pojo.LaptopPojo;
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
        Optional<LaptopPojo> opt=laptopRepo.findById(req.getId());
        if(opt.isPresent())
            throw new Exception("il laptop con quell'id  esiste gia");

        LaptopPojo pojo=new LaptopPojo();
        pojo.setId(req.getId());

        Optional<ProductPojo> product=productRepo.findById(req.getId());

        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());

        laptopRepo.save(pojo);
    }

    @Override
    public void update(LaptopRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<LaptopView> list() {
        return List.of();
    }
}
