package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.iPcRepository;
import com.betacom.eCommerce.interfaces.iRepository.iProductRepository;
import com.betacom.eCommerce.interfaces.iService.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PcService implements iPcService{

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
    private iPcRepository pcRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(PcRequest req) throws Exception{
        PcPojo pojo = null ;
        for(int i=0; i< req.getQuantity();i++ ) {
            pojo = new PcPojo();
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            pojo.setProduct(product.get());
            pojo.setCart(req.getCart());
        }
        pcRepo.save(pojo);
    }

    @Override
    public void update(PcRequest req) throws Exception {
        Optional<PcPojo> opt= pcRepo.findById(req.getId());
        opt.get().setCart(req.getCart());
        if(req.getIdProduct()!=null) {
            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            opt.get().setProduct(product.get());
        }
        pcRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id)throws Exception {
        pcRepo.delete(pcRepo.findById(id).get());

    }

    @Override
    public PcView getById(Integer id) {
        return transformInView(pcRepo.findById(id).get());
    }

    @Override
    public List<PcView> list() {
        return transformInView( pcRepo.findAll());
    }

    public List<PcView> transformInView(List<PcPojo> pojo) {
        return pojo.stream().map(s -> {
            PcView view = new PcView();
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
    public PcView transformInView( PcPojo pojo) {
        PcView view = new PcView();
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
        return view;
    }
}
