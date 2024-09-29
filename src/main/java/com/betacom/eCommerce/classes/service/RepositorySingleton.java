package com.betacom.eCommerce.classes.service;

import com.betacom.eCommerce.interfaces.iPojo.iPojoParent;
import com.betacom.eCommerce.interfaces.iRepository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class RepositorySingleton {

    @Autowired
    private iProductRepository productRepo;
    @Autowired
    private iPsuRepository psuRepo;
    @Autowired
    private iMotherboardRepository motherboardRepo;
    @Autowired
    private iMouseRepository mouseRepo;
    @Autowired
    private iMonitorRepository monitorRepo;
    @Autowired
    private iCpuRepository cpuRepo;
    @Autowired
    private iGpuRepository gpuRepo;
    @Autowired
    private iKeyboardRepository keyboardRepo;
    @Autowired
    private iCoolerRepository coolerRepo;
    @Autowired
    private iRamRepository ramRepo;
    @Autowired
    private iMemoryRepository memoryRepo;

    @SuppressWarnings("unchecked")
    public <T extends iPojoParent> JpaRepository<T, Integer> getRepo(String item) {
        return switch (item.toLowerCase()) {
            case "psu" -> (JpaRepository<T, Integer>) psuRepo;
            case "motherboard" -> (JpaRepository<T, Integer>) motherboardRepo;
            case "mouse" -> (JpaRepository<T, Integer>) mouseRepo;
            case "monitor" -> (JpaRepository<T, Integer>) monitorRepo;
            case "cpu" -> (JpaRepository<T, Integer>) cpuRepo;
            case "gpu" -> (JpaRepository<T, Integer>) gpuRepo;
            case "keyboard" -> (JpaRepository<T, Integer>) keyboardRepo;
            case "cooler" -> (JpaRepository<T, Integer>) coolerRepo;
            case "ram" -> (JpaRepository<T, Integer>) ramRepo;
            case "memory" -> (JpaRepository<T, Integer>) memoryRepo;
            case "product" -> (JpaRepository<T, Integer>) productRepo;
            default -> throw new IllegalArgumentException("Unsupported item type: " + item);
        };
    }
}
