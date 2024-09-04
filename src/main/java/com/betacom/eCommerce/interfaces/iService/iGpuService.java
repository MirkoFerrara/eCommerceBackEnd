package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.*;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface iGpuService {
    public void create(ProductRequest req)  throws Exception;
    public void update(ProductRequest req)  throws Exception;
    public void remove(Integer id)  throws Exception;
    public List<GpuView>list();
    public GpuView getById(Integer id);
    public GpuView transformInView(GpuPojo pojo);
}
