package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.request.TvRequest;
import com.betacom.eCommerce.classes.dto.view.TvView;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iTvRepository;
import com.betacom.eCommerce.interfaces.iService.iTvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TvService implements iTvService{

    @Autowired
    private iTvRepository tvRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(TvRequest req) {

    }

    @Override
    public void update(TvRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<TvView> list() {
        return List.of();
    }
}
