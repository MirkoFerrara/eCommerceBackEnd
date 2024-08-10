package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.ProductView;

import java.util.List;

public interface iProductService {
    public void create(ProductRequest req) throws Exception;
    public void update(ProductRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<ProductView> list();
}
