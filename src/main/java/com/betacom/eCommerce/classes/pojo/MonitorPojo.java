package com.betacom.eCommerce.classes.pojo;

import com.betacom.eCommerce.interfaces.iPojo.iPojoSon.iPojoItem;
import jakarta.persistence.*;

@Entity
@Table(name="monitor")
public class MonitorPojo implements iPojoItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;
    private Boolean cart ;

    @Override
    public Boolean getCart() {return cart;}
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
    public void setProduct(ProductPojo pojo) {this.product = pojo;}
}
