package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.pojo.CartPojo;
import com.betacom.eCommerce.interfaces.iRepository.iCartRepository;
import com.betacom.eCommerce.interfaces.iService.iCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CartService implements iCartService {
@Autowired
private iCartRepository cartRepo;

    @Override
    public void create(CartRequest req) {
        Optional<CartPojo>opt=cartRepo.findById(req.getId());
        //if(opt.isPresent())
            //throw new Exception("");
    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<CartView> list() {
        return List.of();
    }
}
