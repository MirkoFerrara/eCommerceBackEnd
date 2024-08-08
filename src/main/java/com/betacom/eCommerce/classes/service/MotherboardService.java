package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MotherboardService implements iMotherboardService{

    @Override
    public void create(MotherboardRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MotherboardView> list() {
        return List.of();
    }
}
