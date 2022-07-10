package com.entity;


import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.util.Objects;

@Entity
@Table(name = "Product_detail")
public class Product_detail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "price")
    private float price;
    
    @Column(name = "sale_price")
    private float sale_price;

    @ManyToOne
    @JoinColumn(name = "product_id",referencedColumnName = "id")
    private Products products;
    
    @ManyToOne
    @JoinColumn(name = "color_id",referencedColumnName = "id")
    private Colors colors;
    
    @Column(name="images")
    private String images;
    
    @ManyToOne
    @JoinColumn(name = "size_id",referencedColumnName = "id")
    private Sizes sizes;

	public Product_detail() {
		super();
	}

	public Product_detail(int id, float price, float sale_price, Products products, Colors colors, String images,
			Sizes sizes) {
		super();
		this.id = id;
		this.price = price;
		this.sale_price = sale_price;
		this.products = products;
		this.colors = colors;
		this.images = images;
		this.sizes = sizes;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getSale_price() {
		return sale_price;
	}

	public void setSale_price(float sale_price) {
		this.sale_price = sale_price;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public Colors getColors() {
		return colors;
	}

	public void setColors(Colors colors) {
		this.colors = colors;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Sizes getSizes() {
		return sizes;
	}

	public void setSizes(Sizes sizes) {
		this.sizes = sizes;
	}
}
