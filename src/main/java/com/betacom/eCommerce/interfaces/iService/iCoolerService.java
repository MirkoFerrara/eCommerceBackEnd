package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CoolerRequest;
import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;
import com.betacom.eCommerce.classes.pojo.CoolerPojo;


import java.util.List;

public interface iCoolerService {
    public void create(CoolerRequest req) throws Exception;
    public void update(CoolerRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<CoolerView> list();
    public CoolerView getById(Integer id);
    public CoolerView transformInView(CoolerPojo pojo);
    public List<CoolerView> listByIdProduct(Integer idProduct);

}
