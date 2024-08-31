package com.betacom.eCommerce.classes.dto.request;

public class RamRequest extends ProductRequest{
    private Integer id;
    private Boolean cart;
    private Boolean contained;
    private Boolean laptopMounted;

    public Boolean getLaptopMounted() {
        return laptopMounted;
    }

    public void setLaptopMounted(Boolean laptopMounted) {
        this.laptopMounted = laptopMounted;
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
