package com.betacom.eCommerce.classes.dto.request;

public class MouseRequest extends ProductRequest{
    private Integer id;
    private Boolean cart;

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
}
