package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MemoryRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.MemoryView;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMemoryService {
    public void create(MemoryRequest req);
    public void remove(Integer id);
    public List<MemoryView> list();
}
