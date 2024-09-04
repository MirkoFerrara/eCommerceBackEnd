package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.classes.pojo.MotherboardPojo;

import java.util.List;
public interface iMotherboardService {
    public void create(ProductRequest req)throws Exception;
    public void update(ProductRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MotherboardView> list();
    public MotherboardView getById(Integer id);
    public MotherboardView transformInView(MotherboardPojo pojo);


}
