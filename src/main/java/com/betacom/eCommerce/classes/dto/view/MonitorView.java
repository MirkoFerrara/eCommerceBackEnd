package com.betacom.eCommerce.classes.dto.view;

public class MonitorView extends ProductView {
    private Integer id;
    private Integer quantity ; 
    public Integer getQuantity() {
        return quantity;
    } 
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    } 
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
}
