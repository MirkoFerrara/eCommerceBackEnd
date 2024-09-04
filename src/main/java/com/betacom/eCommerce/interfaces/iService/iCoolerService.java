package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.pojo.CoolerPojo;


import java.util.List;

public interface iCoolerService {
    public void create(ProductRequest req) throws Exception;
    public void update(ProductRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<CoolerView> list();
    public CoolerView getById(Integer id);
    public CoolerView transformInView(CoolerPojo pojo);
}
