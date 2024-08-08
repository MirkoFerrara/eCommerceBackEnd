package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.interfaces.iService.iLaptopService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LaptopService implements iLaptopService{
    @Override
    public void create(LaptopRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<LaptopView> list() {
        return List.of();
    }
}
