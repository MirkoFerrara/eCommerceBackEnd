package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;

import java.util.List;

public interface iCartService {
    void create(CartRequest req) throws Exception;
    void remove(Integer id) throws Exception;
    List<CartView>list(String username) throws Exception;
    List<CartView>listSelectedProducts(String username) throws Exception;
    void removeFromCart(CartRequest req) throws Exception;
    CartView getById(Integer id);
    void select(Integer id);
    void purchaseConfirmed(String username);
}
