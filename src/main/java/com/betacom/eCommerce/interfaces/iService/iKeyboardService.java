package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iKeyboardService {
    public void create(KeyboardRequest req)  throws Exception;
    public void update(KeyboardRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<KeyboardView> list();
    public KeyboardView getById(Integer id);

}
