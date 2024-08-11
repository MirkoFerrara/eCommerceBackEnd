package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iLaptopService {
    public void create(LaptopRequest req) throws Exception;
    public void update(LaptopRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<LaptopView> list();
    public LaptopView getById(Integer id);

}
