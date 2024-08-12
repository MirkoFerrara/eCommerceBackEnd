package com.betacom.eCommerce.classes.dto.view;

public class LaptopView extends ProductView {
    private Integer id;
    private RamView ram;
    private CpuView cpu;
    private GpuView gpu;
    private MemoryView memory;
    private MotherboardView motherboard;
    private CoolerView cooler;
    private PsuView psu;

    public CoolerView getCooler() {
        return cooler;
    }

    public void setCooler(CoolerView cooler) {
        this.cooler = cooler;
    }

    public PsuView getPsu() {
        return psu;
    }

    public void setPsu(PsuView psu) {
        this.psu = psu;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public RamView getRam() {
        return ram;
    }

    public void setRam(RamView ram) {
        this.ram = ram;
    }

    public CpuView getCpu() {
        return cpu;
    }

    public void setCpu(CpuView cpu) {
        this.cpu = cpu;
    }

    public GpuView getGpu() {
        return gpu;
    }

    public void setGpu(GpuView gpu) {
        this.gpu = gpu;
    }

    public MemoryView getMemory() {
        return memory;
    }

    public void setMemory(MemoryView memory) {
        this.memory = memory;
    }

    public MotherboardView getMotherboard() {
        return motherboard;
    }

    public void setMotherboard(MotherboardView motherboard) {
        this.motherboard = motherboard;
    }
}
