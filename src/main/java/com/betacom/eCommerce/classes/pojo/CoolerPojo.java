package com.betacom.eCommerce.classes.pojo;

import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoComponent.iPojoComponent;
import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="cooler")
public class CoolerPojo implements iPojoComponent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;
    private Boolean cart ;
    private Boolean laptopMounted ; // true , false if mounted on pc
    private Boolean contained ;
    @OneToMany(mappedBy="idCooler", fetch = FetchType.EAGER)
    private List<LaptopPojo> laptop ;
    @OneToMany(mappedBy="idCooler", fetch = FetchType.EAGER)
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
    @Override
    public Boolean getContained() {
        return contained;
    }
    @Override
    public void setContained(Boolean contained) {
        this.contained = contained;
    }
    @Override
    public Boolean getCart() {
        return cart;
    }
    @Override
    public void setCart(Boolean cart) {
        this.cart = cart;
    }
    @Override
    public Integer getId() {
        return id;
    }
    @Override
    public void setId(Integer id) {
        this.id = id;
    }
    @Override
    public ProductPojo getProduct() {
        return product;
    }
    @Override
    public void setProduct(ProductPojo product) {
        this.product = product;
    }
    @Override
    public Boolean getLaptopMounted() {return laptopMounted;}
    @Override
    public void setLaptopMounted(Boolean laptopMounted) {this.laptopMounted = laptopMounted;}
}
