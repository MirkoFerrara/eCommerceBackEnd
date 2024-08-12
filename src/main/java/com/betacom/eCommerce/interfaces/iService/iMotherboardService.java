package com.betacom.eCommerce.interfaces.iService;

import com.betacom.eCommerce.classes.dto.request.CartRequest;
import com.betacom.eCommerce.classes.dto.request.MotherboardRequest;
import com.betacom.eCommerce.classes.dto.view.CartView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.dto.view.MotherboardView;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.MotherboardPojo;
import org.springframework.stereotype.Service;

import java.util.List;
public interface iMotherboardService {
    public void create(MotherboardRequest req)throws Exception;
    public void update(MotherboardRequest req)throws Exception;
    public void remove(Integer id)throws Exception;
    public List<MotherboardView> list();
    public MotherboardView getById(Integer id);
    public MotherboardView transformInView(MotherboardPojo pojo);


}
