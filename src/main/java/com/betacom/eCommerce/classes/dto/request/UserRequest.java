package com.betacom.eCommerce.classes.dto.request;

public class UserRequest {
    private Integer id;
    private String username;
    private String password;
    private String role;
    private String address;

<<<<<<< HEAD
    @Override
    public String toString() {
        return "UserRequest{" +
                "id=" + id +
                '}';
=======
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
>>>>>>> 6c7a3a189393518eb46e71cfb74971944bd4bc7f
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }

}
