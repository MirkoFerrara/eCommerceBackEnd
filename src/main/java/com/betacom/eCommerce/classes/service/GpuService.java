package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GpuService implements iGpuService {

    @Override
    public void create(GpuRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<GpuView> list() {
        return List.of();
    }
}
