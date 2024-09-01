package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.pojo.CpuPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import org.springframework.stereotype.Service;

import java.util.List;

public interface iCartService {
    public void create(CartRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<CartView>list(String username) throws Exception;
    public List<CartView>listSelectedProducts(String username) throws Exception;
    public void removeFromCart(CartRequest req) throws Exception;
    public CartView getById(Integer id);
    public void select(Integer id);
    public void purchaseConfirmed(String username);
}
