package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.request.TvRequest;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.dto.view.SmartphoneView;
import com.betacom.eCommerce.classes.dto.view.TvView;

import java.util.List;

public interface iSmartphoneService {
    public void create(SmartphoneRequest req) throws Exception;
    public void update(SmartphoneRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<SmartphoneView> list();
    public SmartphoneView getById(Integer id);
}
