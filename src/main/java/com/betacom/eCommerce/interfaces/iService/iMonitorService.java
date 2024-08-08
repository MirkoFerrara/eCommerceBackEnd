package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMonitorService {
    public void create(MonitorRequest req);
    public void remove(Integer id);
    public List<MonitorView> list();
}
