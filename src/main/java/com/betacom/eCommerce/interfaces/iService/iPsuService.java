package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.classes.pojo.PsuPojo;

import java.util.List;

public interface iPsuService {
    public void create(ProductRequest req) throws Exception;
    public void update(ProductRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<PsuView> list();
    public PsuView getById(Integer id);
    public PsuView transformInView(PsuPojo pojo);
}
