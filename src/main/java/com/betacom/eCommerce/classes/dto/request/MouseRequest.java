package com.betacom.eCommerce.classes.dto.request;

public class MouseRequest extends ProductRequest{
    private Integer id;

    private Boolean contained;

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
