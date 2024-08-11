package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMonitorService {
    public void create(MonitorRequest req)throws Exception;
    public void update(MonitorRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MonitorView> list();
    public MonitorView getById(Integer id);

}
