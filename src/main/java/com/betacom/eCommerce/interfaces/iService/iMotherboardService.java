package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import org.springframework.stereotype.Service;

import java.util.List;
public interface iMotherboardService {
    public void create(MotherboardRequest req);
    public void remove(Integer id);
    public List<MotherboardView> list();
}
