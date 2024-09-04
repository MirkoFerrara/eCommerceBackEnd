package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.RamPojo;

import java.util.List;

public interface iRamService {
    public void create(ProductRequest req) throws Exception;
    public void update(ProductRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<RamView> list();
    public RamView getById(Integer id);
    public RamView  transformInView(RamPojo pojo);
}
