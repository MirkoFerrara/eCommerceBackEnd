package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.interfaces.iRepository.iPcRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iPcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PcService implements iPcService{

    @Autowired
    private iPcRepository pcRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(PcRequest req) throws Exception{

    }

    @Override
    public void update(PcRequest req) throws Exception {

    }

    @Override
    public void remove(Integer id)throws Exception {

    }

    @Override
    public List<PcView> list() {
        return List.of();
    }
}
