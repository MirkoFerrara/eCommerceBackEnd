package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.pojo.CpuPojo;
import java.util.List;

public interface iCpuService {
    public void create(CpuRequest req) throws Exception;
    public void update(CpuRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<CpuView> list();
    public CpuView getById(Integer id);
    public CpuView transformInView(CpuPojo pojo);

}
