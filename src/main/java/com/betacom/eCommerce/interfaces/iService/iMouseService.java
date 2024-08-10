package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import org.springframework.stereotype.Service;

import java.util.List;
public interface iMouseService {
    public void create(MouseRequest req)throws Exception;
    public void update(MouseRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MouseView> list();
}
