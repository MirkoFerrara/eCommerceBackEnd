package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="gpu")
public class GpuPojo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    @OneToMany(mappedBy="idGpu", fetch = FetchType.EAGER)
    private List<LaptopPojo> laptop ;

    @OneToMany(mappedBy="idGpu", fetch = FetchType.EAGER)
    private List<PcPojo> pc ;

    public List<PcPojo> getPc() {
        return pc;
    }
    public void setPc(List<PcPojo> pc) {
        this.pc = pc;
    }
    public List<LaptopPojo> getLaptop() {
        return laptop;
    }
    public void setLaptop(List<LaptopPojo> laptop) {
        this.laptop = laptop;
    }
    private Boolean cart ;

    private Boolean contained ;

    public Boolean getContained() {
        return contained;
    }

    public void setContained(Boolean contained) {
        this.contained = contained;
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
}
