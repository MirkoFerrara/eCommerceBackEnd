package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.ProductView;

import java.util.List;

public interface iProductService {
    public void create(ProductRequest req);
    public void remove(Integer id);
    public List<ProductView> list();
}
