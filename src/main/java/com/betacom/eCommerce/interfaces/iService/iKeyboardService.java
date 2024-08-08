package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iKeyboardService {
    public void create(KeyboardRequest req);
    public void remove(Integer id);
    public List<KeyboardView> list();
}
