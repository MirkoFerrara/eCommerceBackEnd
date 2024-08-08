package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.interfaces.iService.iKeyboardService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KeyboardService implements iKeyboardService {

    @Override
    public void create(KeyboardRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<KeyboardView> list() {
        return List.of();
    }
}
