package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

@Entity
@Table(name="laptop")
public class LaptopPojo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    private Integer idRam ;

    private Integer idProcessor ;

    private Integer idGUI ;

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

    public Integer getIdProcessor() {
        return idProcessor;
    }

    public void setIdProcessor(Integer idProcessor) {
        this.idProcessor = idProcessor;
    }

    public Integer getIdGUI() {
        return idGUI;
    }

    public void setIdGUI(Integer idGUI) {
        this.idGUI = idGUI;
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
