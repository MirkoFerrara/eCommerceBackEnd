package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.interfaces.iRepository.iMonitorRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iMonitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MonitorService implements iMonitorService{

    @Autowired
    private iMonitorRepository monitorRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(MonitorRequest req) throws Exception{

    }

    @Override
    public void update(MonitorRequest req) throws Exception{

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MonitorView> list() {
        return List.of();
    }
}
