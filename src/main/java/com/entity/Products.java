package com.entity;


import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "Products")
public class Products {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name")
    @NotEmpty(message = "Vui lòng nhập tên sản phẩm!")
    private String name;

    @Column(name = "title")
    private String title;

    @Column(name = "price")
    private float price;

    @Column(name = "sale_price")
    private float sale_price;
    
    @Column(name = "image")
    private String image;

    @Column(name = "descriptions")
    private String descriptions;

    @OneToMany(mappedBy="products")
    private List<Product_detail> lstProductDetail;
    
    @ManyToOne
    @JoinColumn(name = "cate_id",referencedColumnName = "id")
    private Category category;
    
    @Column(name = "status")
    private boolean status;

	public Products() {
		super();
	}

	public Products(int id, String name, String title, float price, float sale_price, String image, String descriptions,
			List<Product_detail> lstProductDetail, Category category, boolean status) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.price = price;
		this.sale_price = sale_price;
		this.image = image;
		this.descriptions = descriptions;
		this.lstProductDetail = lstProductDetail;
		this.category = category;
		this.status = status;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public List<Product_detail> getLstProductDetail() {
		return lstProductDetail;
	}

	public void setLstProductDetail(List<Product_detail> lstProductDetail) {
		this.lstProductDetail = lstProductDetail;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", title=" + title + ", price=" + price + ", sale_price="
				+ sale_price + ", image=" + image + ", descriptions=" + descriptions + ", category=" + category
				+ ", status=" + status + "]";
	}

}
