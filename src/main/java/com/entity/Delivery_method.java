package com.entity;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Delivery_method")
public class Delivery_method {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private float price;

    @Column(name = "multipler")
    private String multipler;

	public Delivery_method() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Delivery_method(int id, String name, float price, String multipler) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.multipler = multipler;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getMultipler() {
		return multipler;
	}

	public void setMultipler(String multipler) {
		this.multipler = multipler;
	}

}
