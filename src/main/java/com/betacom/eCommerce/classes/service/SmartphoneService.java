package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.view.SmartphoneView;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iSmartphoneRepository;
import com.betacom.eCommerce.interfaces.iService.iSmartphoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SmartphoneService implements iSmartphoneService{

    @Autowired
    private iSmartphoneRepository smartphoneRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(SmartphoneRequest req) {

    }

    @Override
    public void update(SmartphoneRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<SmartphoneView> list() {
        return List.of();
    }
}
