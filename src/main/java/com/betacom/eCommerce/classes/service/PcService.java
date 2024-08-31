package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.classes.dto.request.PcRequest;
import com.betacom.eCommerce.classes.dto.view.MouseView;
import com.betacom.eCommerce.classes.dto.view.PcView;
import com.betacom.eCommerce.classes.dto.view.RamView;
import com.betacom.eCommerce.classes.pojo.*;
import com.betacom.eCommerce.interfaces.iRepository.*;
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
    iCpuRepository cpuRepo;
    @Autowired
    iGpuRepository gpuRepo;
    @Autowired
    iRamRepository ramRepo;
    @Autowired
    iMotherboardRepository motherboardRepo;
    @Autowired
    iCoolerRepository coolerRepo;
    @Autowired
    iPsuRepository psuRepo;
    @Autowired
    iMemoryRepository memoryRepo;
    @Autowired
    private iPcRepository pcRepo;
    @Autowired
    private iProductRepository productRepo;

    @Override
    public void create(PcRequest req) throws Exception {
        for (int i = 0; i < req.getQuantity(); i++) {
            PcPojo pojo = new PcPojo();

            Optional<ProductPojo> product = productRepo.findById(req.getIdProduct());
            if (product.isEmpty()) {
                throw new Exception("Product not found with ID: " + req.getIdProduct());
            }
            pojo.setProduct(product.get());

            Optional<CpuPojo> cpu = cpuRepo.findById(req.getIdCPU());
            if (cpu.isEmpty()) {
                throw new Exception("CPU not found with ID: " + req.getIdCPU());
            }
            pojo.setIdCpu(cpu.get());

            Optional<GpuPojo> gpu = gpuRepo.findById(req.getIdGPU());
            if (gpu.isEmpty()) {
                throw new Exception("GPU not found with ID: " + req.getIdGPU());
            }
            pojo.setIdGpu(gpu.get());

            Optional<MemoryPojo> memory = memoryRepo.findById(req.getIdMemory());
            if (memory.isEmpty()) {
                throw new Exception("Memory not found with ID: " + req.getIdMemory());
            }
            pojo.setIdMemory(memory.get());

            Optional<RamPojo> ram = ramRepo.findById(req.getIdRam());
            if (ram.isEmpty()) {
                throw new Exception("RAM not found with ID: " + req.getIdRam());
            }
            pojo.setIdRam(ram.get());

            Optional<MotherboardPojo> motherboard = motherboardRepo.findById(req.getIdMotherboard());
            if (motherboard.isEmpty()) {
                throw new Exception("Motherboard not found with ID: " + req.getIdMotherboard());
            }
            pojo.setIdMotherboard(motherboard.get());

            Optional<CoolerPojo> cooler = coolerRepo.findById(req.getIdCooler());
            if (cooler.isEmpty()) {
                throw new Exception("Cooler not found with ID: " + req.getIdCooler());
            }
            pojo.setIdCooler(cooler.get());

            Optional<PsuPojo> psu = psuRepo.findById(req.getIdPsu());
            if (psu.isEmpty()) {
                throw new Exception("PSU not found with ID: " + req.getIdPsu());
            }
            pojo.setIdPsu(psu.get());

            pojo.setCart(req.getCart());
            pcRepo.save(pojo);
        }
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
    @Override
    public PcView getById(Integer id) {
        return transformInView(pcRepo.findById(id).get());
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
