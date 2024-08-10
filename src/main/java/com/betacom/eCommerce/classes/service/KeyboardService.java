package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.KeyboardPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iKeyboardRepository;
import com.betacom.eCommerce.interfaces.iService.iKeyboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class KeyboardService implements iKeyboardService {

    @Autowired
    private iKeyboardRepository keyboardRepo;
    @Autowired
    private iProductRepository productRepo;
    @Override
    public void create(KeyboardRequest req) throws Exception{
        Optional<KeyboardPojo> opt=keyboardRepo.findById(req.getId());
        if(opt.isPresent())
            throw new Exception("la keyboard con quell'id  esiste gia");

        KeyboardPojo pojo=new KeyboardPojo();
        pojo.setId(req.getId());

        Optional<ProductPojo> product=productRepo.findById(req.getId());

        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());

        keyboardRepo.save(pojo);
    }

    @Override
    public void update(KeyboardRequest req) throws Exception {
        Optional<KeyboardPojo>opt=keyboardRepo.findById(req.getId());
        if(opt.isEmpty())
            throw new Exception("la keyboard non è presente");
        opt.get().setId(req.getId());


    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<KeyboardView> list() {
        return List.of();
    }
}
