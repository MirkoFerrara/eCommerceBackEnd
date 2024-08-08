package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.interfaces.iService.iMouseService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MouseService implements iMouseService{

    @Override
    public void create(MouseRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<MouseView> list() {
        return List.of();
    }
}
