package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

@Entity
@Table(name="pc")
public class PcPojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    @ManyToOne
    @JoinColumn(name = "idRam")
    private RamPojo idRam ;

    @ManyToOne
    @JoinColumn(name = "idCpu")
    private CpuPojo idCpu ;

    @ManyToOne
    @JoinColumn(name = "idGpu")
    private GpuPojo idGpu ;

    @ManyToOne
    @JoinColumn(name = "idMemory")
    private MemoryPojo idMemory ;

    @ManyToOne
    @JoinColumn(name = "idMotherboard")
    private MotherboardPojo idMotherboard ;

    @ManyToOne
    @JoinColumn(name = "idPsu")
    private PsuPojo idPsu ;

    @ManyToOne
    @JoinColumn(name = "idCooler")
    private CoolerPojo idCooler ;

    private Boolean cart ;

    public PsuPojo getIdPsu() {
        return idPsu;
    }

    public void setIdPsu(PsuPojo idPsu) {
        this.idPsu = idPsu;
    }

    public CoolerPojo getIdCooler() {
        return idCooler;
    }

    public void setIdCooler(CoolerPojo idCooler) {
        this.idCooler = idCooler;
    }



    public Boolean getCart() {
        return cart;
    }
    public void setCart(Boolean cart) {
        this.cart = cart;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public ProductPojo getProduct() {
        return product;
    }
    public void setProduct(ProductPojo product) {
        this.product = product;
    }
    public RamPojo getIdRam() {
        return idRam;
    }
    public void setIdRam(RamPojo idRam) {
        this.idRam = idRam;
    }
    public CpuPojo getIdCpu() {
        return idCpu;
    }
    public void setIdCpu(CpuPojo idCpu) {
        this.idCpu = idCpu;
    }
    public GpuPojo getIdGpu() {
        return idGpu;
    }
    public void setIdGpu(GpuPojo idGpu) {
        this.idGpu = idGpu;
    }
    public MemoryPojo getIdMemory() {
        return idMemory;
    }
    public void setIdMemory(MemoryPojo idMemory) {
        this.idMemory = idMemory;
    }
    public MotherboardPojo getIdMotherboard() {
        return idMotherboard;
    }
    public void setIdMotherboard(MotherboardPojo idMotherboard) {
        this.idMotherboard = idMotherboard;
    }
}
