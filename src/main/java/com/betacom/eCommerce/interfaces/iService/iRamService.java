package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.view.CoolerView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.CoolerPojo;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.RamPojo;

import java.util.List;

public interface iRamService {
    public void create(RamRequest req) throws Exception;
    public void update(RamRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<RamView> list();
    public RamView getById(Integer id);
    public RamView  transformInView(RamPojo pojo);
    public List<RamView>listByIdProduct(Integer idProduct);


}
