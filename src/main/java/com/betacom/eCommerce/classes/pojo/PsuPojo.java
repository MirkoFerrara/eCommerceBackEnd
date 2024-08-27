package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="psu")
public class PsuPojo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    private Boolean cart ;

    private Boolean contained ;

    @OneToMany(mappedBy="idPsu", fetch = FetchType.EAGER)
    private List<LaptopPojo> laptop ;

    @OneToMany(mappedBy="idPsu", fetch = FetchType.EAGER)
    private List<PcPojo> pc ;
    private Boolean laptopMounted ; // true , false if mounted on pc

    public Boolean getLaptopMounted() {
        return laptopMounted;
    }
    public void setLaptopMounted(Boolean laptopMounted) {
        this.laptopMounted = laptopMounted;
    }
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
