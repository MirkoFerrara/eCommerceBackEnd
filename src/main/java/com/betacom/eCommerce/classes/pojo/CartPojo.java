package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

@Entity
@Table(name="cart")
public class CartPojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

    private Integer idItem ;

    private Boolean selected;

    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    @ManyToOne
    @JoinColumn(name = "idUser")
    private UserPojo user ;

    public Boolean getSelected() {
        return selected;
    }
    public void setSelected(Boolean selected) {
        this.selected = selected;
    }
    public UserPojo getUser() {
        return user;
    }
    public void setUser(UserPojo user) {
        this.user = user;
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
    public Integer getIdItem() {
        return idItem;
    }
    public void setIdItem(Integer idItem) {
        this.idItem = idItem;
    }
}
