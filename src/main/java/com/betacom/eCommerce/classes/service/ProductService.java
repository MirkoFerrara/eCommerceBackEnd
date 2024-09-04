package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.ProductRequest;
import com.betacom.eCommerce.classes.dto.view.ProductView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.*;
import com.betacom.eCommerce.interfaces.iService.iProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService implements iProductService {

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
    public void create(ProductRequest req) throws Exception {

        ProductPojo productPojo ;

        if (req.getIdProduct() == null) {
            productPojo = new ProductPojo();
            createProduct(req, productPojo);
        }
        else
            productPojo = productRepo.findById(req.getIdProduct()).get();

        createItem(req, productPojo);
    }

    private void createProduct(ProductRequest req, ProductPojo productPojo) {
        productPojo.setItem(req.getItem());
        productPojo.setBrand(req.getBrand());
        productPojo.setDescription(req.getDescription());
        productPojo.setModel(req.getModel());
        productPojo.setPrice(req.getPrice());
        productPojo.setColour(req.getColour());
        productRepo.save(productPojo);
    }

    private void createItem(ProductRequest req, ProductPojo productPojo) {
        switch (req.getItem().toLowerCase()) {
            case "psu":
                processPsu(productPojo, req);
                break;
            case "mouse":
                processMouse(productPojo, req);
                break;
            case "monitor":
                processMonitor(productPojo, req);
                break;
            case "cpu":
                processCpu(productPojo, req);
                break;
            case "gpu":
                processGpu(productPojo, req);
                break;
            case "motherboard":
                processMotherboard(productPojo, req);
                break;
            case "keyboard":
                processKeyboard(productPojo, req);
                break;
            case "cooler":
                processCooler(productPojo, req);
                break;
            case "ram":
                processRam(productPojo, req);
                break;
            case "memory":
                processMemory(productPojo, req);
                break;
            default:
                throw new IllegalArgumentException("Tipo di prodotto non supportato: " + req.getItem());
        }
    }

    private void processPsu(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            PsuPojo itemPojo = new PsuPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            itemPojo.setContained(req.getContained());
            psuRepo.save(itemPojo);
        }
    }

    private void processMouse(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            MousePojo itemPojo = new MousePojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            mouseRepo.save(itemPojo);
        }
    }

    private void processMonitor(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            MonitorPojo itemPojo = new MonitorPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            monitorRepo.save(itemPojo);
        }
    }

    private void processCpu(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            CpuPojo itemPojo = new CpuPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(req.getCart());
            itemPojo.setContained(false);
            cpuRepo.save(itemPojo);
        }
    }

    private void processGpu(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            GpuPojo itemPojo = new GpuPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(req.getCart());
            itemPojo.setContained(false);
            gpuRepo.save(itemPojo);
        }
    }

    private void processMotherboard(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            MotherboardPojo itemPojo = new MotherboardPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            itemPojo.setContained(req.getContained());
            motherboardRepo.save(itemPojo);
        }
    }

    private void processKeyboard(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            KeyboardPojo itemPojo = new KeyboardPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            keyboardRepo.save(itemPojo);
        }
    }

    private void processCooler(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            CoolerPojo itemPojo = new CoolerPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            itemPojo.setContained(req.getContained());
            coolerRepo.save(itemPojo);
        }
    }

    private void processRam(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            RamPojo itemPojo = new RamPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            itemPojo.setContained(req.getContained());
            ramRepo.save(itemPojo);
        }
    }

    private void processMemory(ProductPojo productPojo, ProductRequest req) {
        for (int i = 0; i < req.getQuantity(); i++) {
            MemoryPojo itemPojo = new MemoryPojo();
            itemPojo.setProduct(productPojo);
            itemPojo.setCart(false);
            itemPojo.setContained(req.getContained());
            memoryRepo.save(itemPojo);
        }
    }

    /*-----------------------------------------------------------------------------------------*/
    /******************************************************************************************/
    /*-----------------------------------------------------------------------------------------*/

    @Override
    public void update(ProductRequest req) throws Exception {
        Optional<ProductPojo> opt = productRepo.findById(req.getIdProduct());
        if (opt.isEmpty())
            throw new Exception("il prodotto non esiste");
        opt.get().setPrice(req.getPrice());
        opt.get().setItem(req.getItem());
        opt.get().setColour(req.getColour());
        opt.get().setDescription(req.getDescription());
        opt.get().setModel(req.getModel());
        opt.get().setBrand(req.getBrand());
        productRepo.save(opt.get());
    }

    /******************************************************************************************/
    /******************************************************************************************/

    @Override
    public void remove(Integer id) {
        ProductPojo pojo = productRepo.findById(id).get();
        String colour = pojo.getColour();
        String model = pojo.getModel();
        String brand = pojo.getBrand();

        if (pojo.getItem().equalsIgnoreCase("Cooler")) {

            List<CoolerPojo> listPojo = coolerRepo.findAll();

            List<CoolerPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();

            if (filteredList.isEmpty())
                productRepo.delete(pojo);

        } else if (pojo.getItem().equalsIgnoreCase("Psu")) {
            List<PsuPojo> listPojo = psuRepo.findAll();
            List<PsuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equalsIgnoreCase("Pc")) {
            List<PcPojo> listPojo = pcRepo.findAll();
            List<PcPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equalsIgnoreCase("Ram")) {
            List<RamPojo> listPojo = ramRepo.findAll();
            List<RamPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equalsIgnoreCase("Mouse")) {
            List<MousePojo> listPojo = mouseRepo.findAll();
            List<MousePojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equalsIgnoreCase("Monitor")) {
            List<MonitorPojo> listPojo = monitorRepo.findAll();
            List<MonitorPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equalsIgnoreCase("Motherboard")) {
            List<MotherboardPojo> listPojo = motherboardRepo.findAll();
            List<MotherboardPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equals("Keyboard")) {
            List<KeyboardPojo> listPojo = keyboardRepo.findAll();
            List<KeyboardPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equals("Laptop")) {
            List<LaptopPojo> listPojo = laptopRepo.findAll();
            List<LaptopPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equals("Gpu")) {
            List<GpuPojo> listPojo = gpuRepo.findAll();
            List<GpuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equals("Cpu")) {
            List<CpuPojo> listPojo = cpuRepo.findAll();
            List<CpuPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        } else if (pojo.getItem().equals("Memory")) {
            List<MemoryPojo> listPojo = memoryRepo.findAll();
            List<MemoryPojo> filteredList = listPojo.stream()
                    .filter(s -> s.getProduct().getColour().equalsIgnoreCase(colour)
                            && s.getProduct().getModel().equalsIgnoreCase(model)
                            && s.getProduct().getBrand().equalsIgnoreCase(brand))
                    .toList();
            if (filteredList.isEmpty())
                productRepo.delete(pojo);
        }
    }

    @Override
    public List<ProductView> list(String item) {
        List<ProductPojo> filteredList = productRepo
                .findAll()
                .stream()
                .filter(pojo -> pojo.getItem().equalsIgnoreCase(item)).toList();
        return transformInView(filteredList);
    }

    @Override
    public ProductView getById(Integer id) {
        return transformInView(productRepo.findById(id).get());
    }

    public ProductView transformInView(ProductPojo pojo) {
        ProductView view = new ProductView();
        view.setIdProduct(pojo.getId());
        view.setBrand(pojo.getBrand());
        view.setColour(pojo.getColour());
        view.setDescription(pojo.getDescription());
        view.setPrice(pojo.getPrice());
        view.setModel(pojo.getModel());
        view.setUrl(pojo.getUrl());
        view.setItem(pojo.getItem());
        return view;
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
            view.setUrl(s.getUrl());
            return view;
        }).toList();
    }

    @Override
    public List<ProductView> search(String search) {
        List<ProductPojo> filteredList =  productRepo.findAll().stream()
                .filter(s -> s.getItem().toLowerCase().contains(search.toLowerCase()) ||
                        s.getModel().toLowerCase().contains(search.toLowerCase())||
                        s.getBrand().toLowerCase().contains(search.toLowerCase())||
                        s.getColour().toLowerCase().contains(search.toLowerCase() ) ||
                        s.getDescription().toLowerCase().contains(search.toLowerCase()) ||
                        s.getPrice().toString().contains(search) )
                .toList();
        return transformInView(filteredList);
    }
}
