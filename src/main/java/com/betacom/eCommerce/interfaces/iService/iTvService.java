package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.SmartphoneRequest;
import com.betacom.eCommerce.classes.dto.request.TvRequest;
import com.betacom.eCommerce.classes.dto.request.UserRequest;
import com.betacom.eCommerce.classes.dto.view.TvView;

import java.util.List;

public interface iTvService {

    public void create(TvRequest req) throws Exception;
    public void update(TvRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<TvView> list();

}
