package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.*;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ProductService implements iProductService{

    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iCoolerRepository coolerRepo;
    @Autowired
    private iCartRepository cartRepo;
    @Autowired
    private iUserRepository userRepo;
    @Autowired
    private iPcRepository pcRepo;
    @Autowired
    private iGpuRepository gpuRepo;
    @Autowired
    private iCpuRepository cpuRepo;
    @Autowired
    private iMemoryRepository memoryRepo;
    @Autowired
    private iLaptopRepository laptopRepo;
    @Autowired
    private iMonitorRepository monitorRepo;
    @Autowired
    private iRamRepository ramRepo;
    @Autowired
    private iMotherboardRepository motherboardRepo;
    @Autowired
    private iMouseRepository mouseRepo;
    @Autowired
    private iPsuRepository psuRepo;
    @Autowired
    private iKeyboardRepository keyboardRepo;





    @Override
    public void create(ProductRequest req) {
        ProductPojo pojo=new ProductPojo();
        pojo.setItem(req.getItem());
        pojo.setBrand(req.getBrand());
        pojo.setDescription(req.getDescription());
        pojo.setModel(req.getModel());
        pojo.setPrice(req.getPrice());
        pojo.setColour(req.getColour());
        productRepo.save(pojo);
    }

    @Override
    public void update(ProductRequest req) throws Exception {
        Optional<ProductPojo> opt=productRepo.findById(req.getIdProduct());
        if(opt.isEmpty())
            throw new Exception("il prodotto non esiste");

        opt.get().setPrice(req.getPrice());
        opt.get().setItem(req.getItem());
        opt.get().setColour(req.getColour());
        opt.get().setDescription(req.getDescription());
        opt.get().setModel(req.getModel());
        opt.get().setBrand(req.getBrand());
        productRepo.save(opt.get());
    }

    @Override
    public void remove(Integer id) {
        ProductPojo pojo = productRepo.findById(id).get();
        String colour = pojo.getColour();
        String model = pojo.getModel();
        String brand = pojo.getBrand() ;

        if(pojo.getItem().equalsIgnoreCase("Cooler")) {
            List<CoolerPojo>  listPojo =  coolerRepo.findAll() ;
            List<CoolerPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                 productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Psu")){
                List<PsuPojo>  listPojo =  psuRepo.findAll() ;
            List<PsuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Pc")){
            List<PcPojo>  listPojo =  pcRepo.findAll() ;
            List<PcPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Ram")){
            List<RamPojo>  listPojo =  ramRepo.findAll() ;
            List<RamPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Mouse")){
            List<MousePojo>  listPojo =  mouseRepo.findAll() ;
            List<MousePojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Monitor")){
            List<MonitorPojo>  listPojo =  monitorRepo.findAll() ;
            List<MonitorPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equalsIgnoreCase("Motherboard")){
            List<MotherboardPojo>  listPojo =  motherboardRepo.findAll() ;
            List<MotherboardPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equals("Keyboard")){
            List<KeyboardPojo>  listPojo =  keyboardRepo.findAll() ;
            List<KeyboardPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equals("Laptop")){
            List<LaptopPojo>  listPojo =  laptopRepo.findAll() ;
            List<LaptopPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equals("Gpu")){
            List<GpuPojo>  listPojo =  gpuRepo.findAll() ;
            List<GpuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if(pojo.getItem().equals("Cpu")){
            List<CpuPojo>  listPojo =  cpuRepo.findAll() ;
            List<CpuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        }else if(pojo.getItem().equals("Memory")){
            List<MemoryPojo>  listPojo =  memoryRepo.findAll() ;
            List<MemoryPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if(filteredList.isEmpty())
                productRepo.delete(pojo);
        }
    }

    @Override
    public List<ProductView> list() {
        return transformInView( productRepo.findAll());
    }

    public List<ProductView> transformInView(List<ProductPojo> pojo) {
        return pojo.stream().map(s -> {
            ProductView view = new ProductView();
            view.setIdProduct(s.getId());
            view.setBrand(s.getBrand());
            view.setColour(s.getColour());
            view.setDescription(s.getDescription());
            view.setPrice(s.getPrice());
            view.setModel(s.getModel());
            return view;
        }).toList();
    }

}
