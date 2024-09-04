package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;

import java.util.List;
public interface iMouseService {
    public void create(ProductRequest req)throws Exception;
    public void update(ProductRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MouseView> list();
    public MouseView getById(Integer id);

}
