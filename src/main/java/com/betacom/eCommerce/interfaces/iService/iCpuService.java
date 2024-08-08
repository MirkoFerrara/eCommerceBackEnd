package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import org.springframework.stereotype.Service;

import java.util.List;

public interface iCpuService {
    public void create(CpuRequest req);
    public void remove(Integer id);
    public List<CpuView> list();
}
