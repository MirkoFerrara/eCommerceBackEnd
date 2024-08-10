package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.interfaces.iRepository.iMotherboardRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMotherboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MotherboardService implements iMotherboardService{

    @Autowired
    private iMotherboardRepository motherboardRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(MotherboardRequest req) throws Exception{

    }

    @Override
    public void update(MotherboardRequest req) throws Exception{

    }

    @Override
    public void remove(Integer id) throws Exception{

    }

    @Override
    public List<MotherboardView> list() {
        return List.of();
    }
}
