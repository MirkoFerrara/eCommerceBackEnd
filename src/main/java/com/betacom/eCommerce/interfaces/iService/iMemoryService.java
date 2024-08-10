package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.request.MonitorRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMemoryService {
    public void create(MemoryRequest req) throws Exception;
    public void update(MemoryRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<MemoryView> list();
}
