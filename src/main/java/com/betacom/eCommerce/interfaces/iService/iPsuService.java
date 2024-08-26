package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.PsuRequest;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.PsuView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.PsuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;

import java.util.List;

public interface iPsuService {
    public void create(PsuRequest req) throws Exception;
    public void update(PsuRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<PsuView> list();
    public PsuView getById(Integer id);
    public PsuView transformInView(PsuPojo pojo);
    public PsuView listByIdProduct(Integer idProduct);


}
