package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MouseRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import org.springframework.stereotype.Service;

import java.util.List;
public interface iMouseService {
    public void create(MouseRequest req);
    public void remove(Integer id);
    public List<MouseView> list();
}
