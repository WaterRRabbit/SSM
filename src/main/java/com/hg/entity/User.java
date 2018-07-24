package com.hg.entity;

public class User {
    private Integer id;
    private String name;
    private String idCard;
    private String address;
    private String phone;

    public User(){}

    public User(Integer id, String name, String idCard, String address, String phone) {
        this.id = id;
        this.name = name;
        this.idCard = idCard;
        this.address = address;
        this.phone = phone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
