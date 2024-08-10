package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.PcView;

import java.util.List;

public interface iPcService {
    public void create(PcRequest req) throws Exception;
    public void update(PcRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<PcView> list();
}
