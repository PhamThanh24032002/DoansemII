package com.entity;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Favorites")
public class Favorites {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "cusId")
    private String cusId;

    @Column(name = "proId")
    private String proId;
//not mapping to product and customers
}
