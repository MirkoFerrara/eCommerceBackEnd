package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements iProductService{

    @Override
    public void create(ProductRequest req) {

    }

    @Override
    public void remove(Integer id) {

    }

    @Override
    public List<ProductView> list() {
        return List.of();
    }
}
