package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import com.betacom.eCommerce.interfaces.iService.iMemoryService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemoryService implements iMemoryService{

    @Override
    public void create(MemoryRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MemoryView> list() {
        return List.of();
    }
}
