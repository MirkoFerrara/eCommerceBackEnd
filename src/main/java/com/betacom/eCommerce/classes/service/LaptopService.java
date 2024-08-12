package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.LaptopRequest;
import com.betacom.eCommerce.classes.dto.view.LaptopView;
import com.betacom.eCommerce.classes.pojo.LaptopPojo;
import com.betacom.eCommerce.classes.pojo.ProductPojo;
import com.betacom.eCommerce.interfaces.iRepository.iLaptopRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LaptopService implements iLaptopService{

    @Autowired
    private iCpuService cpuService;
    @Autowired
    private iRamService ramService;
    @Autowired
    private iMotherboardService motherboardService;
    @Autowired
    private iGpuService gpuService;
    @Autowired
    private iMemoryService memoryService;
    @Autowired
    private iPsuService psuService;
    @Autowired
    private iCoolerService coolerService;

    @Autowired
    private iLaptopRepository laptopRepo;
    @Autowired
    private iProductRepository productRepo;
    @Override
    public void create(LaptopRequest req) throws Exception{
        LaptopPojo pojo=new LaptopPojo();
        Optional<ProductPojo> product=productRepo.findById(req.getId());
        pojo.setProduct(product.get());
        pojo.setCart(req.getCart());

        laptopRepo.save(pojo);
    }

    @Override
    public void update(LaptopRequest req) {
        Optional<LaptopPojo> opt= laptopRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        laptopRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) {
        laptopRepo.delete(laptopRepo.findById(id).get());

    }

    @Override
    public List<LaptopView> list() {
        return transformInView( laptopRepo.findAll());
    }

    @Override
    public LaptopView getById(Integer id) {
        return transformInView(laptopRepo.findById(id).get());
    }

    public LaptopView transformInView(LaptopPojo pojo) {
        LaptopView view = new LaptopView();
        view.setId(pojo.getId());
        view.setIdProduct(pojo.getProduct().getId());
        view.setBrand(pojo.getProduct().getBrand());
        view.setColour(pojo.getProduct().getColour());
        view.setDescription(pojo.getProduct().getDescription());
        view.setPrice(pojo.getProduct().getPrice());
        view.setModel(pojo.getProduct().getModel());
        view.setCpu( cpuService.transformInView( pojo.getIdCpu()));
        view.setGpu( gpuService.transformInView( pojo.getIdGpu()));
        view.setMemory( memoryService.transformInView( pojo.getIdMemory()));
        view.setRam( ramService.transformInView( pojo.getIdRam()));
        view.setMotherboard( motherboardService.transformInView( pojo.getIdMotherboard()));
        view.setCooler( coolerService.transformInView(pojo.getIdCooler()));
        view.setPsu(psuService.transformInView(pojo.getIdPsu()));
        return view ;
    }

    public List<LaptopView> transformInView(List<LaptopPojo> pojo) {
        return pojo.stream().map(s -> {
            LaptopView view = new LaptopView();
            view.setId(s.getId());
            view.setIdProduct(s.getProduct().getId());
            view.setBrand(s.getProduct().getBrand());
            view.setColour(s.getProduct().getColour());
            view.setDescription(s.getProduct().getDescription());
            view.setPrice(s.getProduct().getPrice());
            view.setModel(s.getProduct().getModel());
            view.setCpu( cpuService.transformInView( s.getIdCpu()));
            view.setGpu( gpuService.transformInView( s.getIdGpu()));
            view.setMemory( memoryService.transformInView( s.getIdMemory()));
            view.setRam( ramService.transformInView( s.getIdRam()));
            view.setMotherboard( motherboardService.transformInView( s.getIdMotherboard()));
            view.setCooler( coolerService.transformInView(s.getIdCooler()));
            view.setPsu(psuService.transformInView(s.getIdPsu()));
            return view;
        }).toList();
    }
}
