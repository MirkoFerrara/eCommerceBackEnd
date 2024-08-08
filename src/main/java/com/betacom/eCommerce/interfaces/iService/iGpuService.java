package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface iGpuService {
    public void create(GpuRequest req);
    public void remove(Integer id);
    public List<GpuView>list();
}
