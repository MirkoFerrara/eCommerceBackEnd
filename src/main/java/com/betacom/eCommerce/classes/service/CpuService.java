package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CpuService implements iCpuService {

    @Override
    public void create(CpuRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<CpuView> list() {
        return List.of();
    }
}
