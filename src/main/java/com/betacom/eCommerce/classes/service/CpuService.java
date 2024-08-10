package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.CpuRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.pojo.CpuPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iCpuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.iCpuService;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CpuService implements iCpuService {

    @Autowired
    private iCpuRepository cpuRepo;
    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iProductService productService;

    @Override
    public void create(CpuRequest req) throws Exception {
        Optional<CpuPojo> opt=cpuRepo.findById(req.getId());
        if(opt.isPresent())
            throw new Exception("la cpu con quell'id  esiste gia");

        CpuPojo pojo=new CpuPojo();
        pojo.setId(req.getId());

        Optional<ProductPojo> product=productRepo.findById(req.getId());

        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        pojo.setContained(req.getContained());

        cpuRepo.save(pojo);
    }

    @Override
    public void update(CpuRequest req) throws Exception {
       /* Optional<CpuPojo>opt=cpuRepo.findById(req.getId());
        if(opt.isEmpty())
            throw new Exception("cpu not present");
        opt.get().setId(req.getId());
        opt.get().setCart(req.getCart());*/

        productService.update(req);
    }

    private List<CpuView> transformInView(List<CpuPojo> cpu) {
        return cpu.stream().map(s -> {
            CpuView view = new CpuView();
            view.setId(s.getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            return view;
        }).collect(Collectors.toList());
    }

    @Override
    public void remove(Integer id) throws Exception {
        Optional<CpuPojo>opt=cpuRepo.findById(id);
        if(opt.isEmpty())
            throw new Exception("cpu non presente");
        cpuRepo.delete(opt.get());
    }

    @Override
    public List<CpuView> list() {
        List<CpuPojo> pojo = cpuRepo.findAll();
        return transformInView(pojo);
    }

}
