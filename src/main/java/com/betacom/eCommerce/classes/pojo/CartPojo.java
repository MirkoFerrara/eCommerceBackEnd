package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

@Entity
@Table(name="cart")
public class CartPojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

<<<<<<< HEAD
=======
    private Integer idItem ;

    private Boolean selected;

>>>>>>> 6c7a3a189393518eb46e71cfb74971944bd4bc7f
    @ManyToOne
    @JoinColumn(name = "idProduct")
    private ProductPojo product ;

    @ManyToOne
    @JoinColumn(name = "idUser")
    private UserPojo user ;

<<<<<<< HEAD
    private Integer idItem ;

    private Boolean selected;





    public Boolean getSelected() {
        return selected;
    }
    public void setSelected(Boolean selected) {
        this.selected = selected;
    }
=======
    public Boolean getSelected() {
        return selected;
    }

    public void setSelected(Boolean selected) {
        this.selected = selected;
    }

>>>>>>> 6c7a3a189393518eb46e71cfb74971944bd4bc7f
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
