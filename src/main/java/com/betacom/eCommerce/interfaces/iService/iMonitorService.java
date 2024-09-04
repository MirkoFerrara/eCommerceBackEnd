package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.MonitorView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMonitorService {
    public void create(ProductRequest req)throws Exception;
    public void update(ProductRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MonitorView> list();
    public MonitorView getById(Integer id);

}
