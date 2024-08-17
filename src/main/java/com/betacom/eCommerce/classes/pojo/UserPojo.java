package com.betacom.eCommerce.classes.pojo;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="user")
public class UserPojo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id ;

    private String username ;

    private String password ;

    private Boolean role ;

    private String Address;

    @OneToMany(mappedBy="user", fetch = FetchType.EAGER)
    private List<CartPojo> cart ;

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public List<CartPojo> getCart() {
        return cart;
    }

    public void setCart(List<CartPojo> cart) {
        this.cart = cart;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getRole() {
        return role;
    }

    public void setRole(Boolean role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
