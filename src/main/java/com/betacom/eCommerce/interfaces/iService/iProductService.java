package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;

import java.util.List;

public interface iProductService {
     void create(ProductRequest req) throws Exception;
     void update(ProductRequest req) throws Exception;
     void remove(Integer id) throws Exception;
     List<ProductView> list(String item);
     ProductView getById(Integer id);
     List<ProductView> search(String search);
}
