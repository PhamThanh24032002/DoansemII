package com.entity;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Order_detail")
public class Order_detail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "cusId")
    private int cusId;

    @Column(name = "proId")
    private int proId;

    @Column(name = "totalPrice")
    private float totalPrice;

    @Column(name = "deliveryId")
    private int email;

    @Column(name = "paymentId")
    private int paymentId;

    //chua map dc voi cac bang khac
}
