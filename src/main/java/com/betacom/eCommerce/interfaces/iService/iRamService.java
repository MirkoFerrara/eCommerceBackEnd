package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.KeyboardRequest;
import com.betacom.eCommerce.classes.dto.request.RamRequest;
import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.view.KeyboardView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.dto.view.SmartphoneView;

import java.util.List;

public interface iRamService {
    public void create(RamRequest req) throws Exception;
    public void update(RamRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<RamView> list();
    public RamView getById(Integer id);
}
