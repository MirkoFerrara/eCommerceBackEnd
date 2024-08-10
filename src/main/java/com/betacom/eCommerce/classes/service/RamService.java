package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iRamRepository;
import com.betacom.eCommerce.interfaces.iService.iRamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RamService implements iRamService{

    @Autowired
    private iRamRepository ramRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(RamRequest req) {

    }

    @Override
    public void update(RamRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<RamView> list() {
        return List.of();
    }
}
