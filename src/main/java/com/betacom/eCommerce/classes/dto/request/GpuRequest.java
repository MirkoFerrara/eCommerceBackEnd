package com.betacom.eCommerce.classes.dto.request;

public class GpuRequest extends ProductRequest{
    private Integer id;
    private Boolean cart;
    private Boolean contained;

    @Override
    public String toString() {
        return "GpuRequest{" +
                "id=" + id +
                ", cart=" + cart +
                ", contained=" + contained +
                ", getIdProduct "+getIdProduct() +
                '}';
    }


    public Boolean getCart() {
        return cart;
    }
    public void setCart(Boolean cart) {
        this.cart = cart;
    }
    public Boolean getContained() {
        return contained;
    }
    public void setContained(Boolean contained) {
        this.contained = contained;
    } 
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
}
