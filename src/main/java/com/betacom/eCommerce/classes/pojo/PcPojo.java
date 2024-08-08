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

    private Integer idRam ;

    private Integer idCPU ;

    private Integer idGPU ;

    private Integer idMemory ;

    private Integer idMotherBoard ;

    private Boolean cart ;

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

    public Integer getIdRam() {
        return idRam;
    }

    public void setIdRam(Integer idRam) {
        this.idRam = idRam;
    }

    public Integer getIdCPU() {
        return idCPU;
    }

    public void setIdCPU(Integer idCPU) {
        this.idCPU = idCPU;
    }

    public Integer getIdGPU() {
        return idGPU;
    }

    public void setIdGPU(Integer idGPU) {
        this.idGPU = idGPU;
    }

    public Integer getIdMemory() {
        return idMemory;
    }

    public void setIdMemory(Integer idMemory) {
        this.idMemory = idMemory;
    }

    public Integer getIdMotherBoard() {
        return idMotherBoard;
    }

    public void setIdMotherBoard(Integer idMotherBoard) {
        this.idMotherBoard = idMotherBoard;
    }
}
