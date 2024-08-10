package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import org.springframework.stereotype.Service;

import java.util.List;

public interface iCartService {
    public void create(CartRequest req) throws Exception;
    public void update(CartRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<CartView>list();
}
