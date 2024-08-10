package com.betacom.eCommerce.classes.dto.view;

public class MotherboardView extends ProductView {
    private Integer id;
    private Integer idProdotto;
    private Boolean cart;
    private Boolean contained;

    public Integer getIdProdotto()
    {
        return idProdotto;
    }

    public void setIdProdotto(Integer idProdotto)
    {
        this.idProdotto=idProdotto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
}
