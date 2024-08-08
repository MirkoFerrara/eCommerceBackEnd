package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.interfaces.iService.iMonitorService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MonitorService implements iMonitorService{
    @Override
    public void create(MonitorRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MonitorView> list() {
        return List.of();
    }
}
