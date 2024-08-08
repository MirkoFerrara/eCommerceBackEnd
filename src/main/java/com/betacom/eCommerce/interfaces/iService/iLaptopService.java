package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iLaptopService {
    public void create(LaptopRequest req);
    public void remove(Integer id);
    public List<LaptopView> list();
}
