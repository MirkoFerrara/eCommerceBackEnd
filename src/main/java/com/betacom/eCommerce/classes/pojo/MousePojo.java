package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

@Entity
@Table(name="mouse")
public class MousePojo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

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
}
