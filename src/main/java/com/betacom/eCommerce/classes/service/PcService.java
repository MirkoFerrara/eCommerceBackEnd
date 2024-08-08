package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.interfaces.iService.iPcService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PcService implements iPcService{

    @Override
    public void create(PcRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<PcView> list() {
        return List.of();
    }
}
