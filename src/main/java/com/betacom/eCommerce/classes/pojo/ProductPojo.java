package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="product")
public class ProductPojo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

    private String model ;

    private String item ; // es : Smartphone , Tv , Pc , Ram ....

    private String brand ;

    private Float price ;

    private String description ;

    private String colour ;

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<MousePojo> mouse ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<RamPojo> ram ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<CpuPojo> cpu ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<GpuPojo> gpu ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<PcPojo> pc ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<MonitorPojo> monitor ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<MotherboardPojo> motherboard ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<CoolerPojo> cooler ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<CartPojo> cart ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<PsuPojo> psu  ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<KeyboardPojo> keyboard ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<MemoryPojo> memory ;

    @OneToMany(mappedBy="product", fetch = FetchType.EAGER)
    private List<LaptopPojo> laptop ;



    public List<CoolerPojo> getCooler() {
        return cooler;
    }
    public void setCooler(List<CoolerPojo> cooler) {
        this.cooler = cooler;
    }
    public List<PsuPojo> getPsu() {
        return psu;
    }
    public void setPsu(List<PsuPojo> psu) {
        this.psu = psu;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<MousePojo> getMouse() {
        return mouse;
    }

    public void setMouse(List<MousePojo> mouse) {
        this.mouse = mouse;
    }

    public List<RamPojo> getRam() {
        return ram;
    }

    public void setRam(List<RamPojo> ram) {
        this.ram = ram;
    }

    public List<CpuPojo> getCpu() {
        return cpu;
    }

    public void setCpu(List<CpuPojo> cpu) {
        this.cpu = cpu;
    }

    public List<GpuPojo> getGpu() {
        return gpu;
    }

    public void setGpu(List<GpuPojo> gpu) {
        this.gpu = gpu;
    }

    public List<PcPojo> getPc() {
        return pc;
    }

    public void setPc(List<PcPojo> pc) {
        this.pc = pc;
    }

    public List<MonitorPojo> getMonitor() {
        return monitor;
    }

    public void setMonitor(List<MonitorPojo> monitor) {
        this.monitor = monitor;
    }

    public List<MotherboardPojo> getMotherboard() {
        return motherboard;
    }

    public void setMotherboard(List<MotherboardPojo> motherboard) {
        this.motherboard = motherboard;
    }

    public List<CartPojo> getCart() {
        return cart;
    }

    public void setCart(List<CartPojo> cart) {
        this.cart = cart;
    }

    public List<KeyboardPojo> getKeyboard() {
        return keyboard;
    }

    public void setKeyboard(List<KeyboardPojo> keyboard) {
        this.keyboard = keyboard;
    }

    public List<MemoryPojo> getMemory() {
        return memory;
    }

    public void setMemory(List<MemoryPojo> memory) {
        this.memory = memory;
    }

    public List<LaptopPojo> getLaptop() {
        return laptop;
    }

    public void setLaptop(List<LaptopPojo> laptop) {
        this.laptop = laptop;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

}
