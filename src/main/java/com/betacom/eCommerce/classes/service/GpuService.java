package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.GpuRequest;
import com.betacom.eCommerce.classes.dto.view.CpuView;
import com.betacom.eCommerce.classes.dto.view.GpuView;
import com.betacom.eCommerce.classes.pojo.CpuPojo;
import com.betacom.eCommerce.classes.pojo.GpuPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iGpuRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iRepository.iUserRepository;
import com.betacom.eCommerce.interfaces.iService.iGpuService;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class GpuService implements iGpuService {

    @Autowired
    private iGpuRepository gpuRepo;
    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iProductService productService;
    @Override
    public void create(GpuRequest req) throws Exception {
        Optional<GpuPojo> opt=gpuRepo.findById(req.getId());
        if(opt.isPresent())
            throw new Exception("la Gpu con quell'id  esiste gia");

        GpuPojo pojo=new GpuPojo();
        pojo.setId(req.getId());

        Optional<ProductPojo> product=productRepo.findById(req.getId());

        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());
        pojo.setContained(req.getContained());

        gpuRepo.save(pojo);

    }

    @Override
    public void update(GpuRequest req) throws Exception {
       /* Optional<GpuPojo>opt=gpuRepo.findById(req.getId());
        if(opt.isEmpty())
            throw new Exception("la cpu non è presente");
        opt.get().setId(req.getId());
        opt.get().setCart(req.getCart());*/
        productService.update(req);
    }

    @Override
    public void remove(Integer id) throws Exception {
        Optional<GpuPojo>opt=gpuRepo.findById(id);
        if(opt.isEmpty())
            throw new Exception("cpu non presente");
        gpuRepo.delete(opt.get());
    }

    @Override
    public List<GpuView> list() {
//        List<GpuPojo> pojo = gpuRepo.findAll();
//        return transformInView(pojo);
        return null ;
    }

    private List<GpuView> transformInView(List<GpuPojo> gpu) {
        return gpu.stream().map(s -> {
            GpuView view = new GpuView();
            view.setId(s.getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            return view;
        }).collect(Collectors.toList());
    }

}
