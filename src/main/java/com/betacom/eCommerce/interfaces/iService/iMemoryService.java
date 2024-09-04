package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.*;
import com.betacom.eCommerce.classes.pojo.MemoryPojo;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface iMemoryService {
    public void create(ProductRequest req) throws Exception;
    public void update(ProductRequest req) throws Exception;
    public void remove(Integer id) throws Exception;
    public List<MemoryView> list();
    public MemoryView getById(Integer id);
    public MemoryView transformInView(MemoryPojo pojo);

}
