package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "Categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name")
    @NotEmpty(message = "Vui lòng nhập tên danh mục")
    private String name;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "status")
    @NotNull(message = "Vui lòng chọn trạng thái")
    private boolean status;
    
    @OneToMany(fetch = FetchType.EAGER, mappedBy="category", cascade = CascadeType.ALL)
    private List<Products> lstProduct;
    
    public Category() {
    }
	public Category(int id, String name, String avatar, boolean status, List<Products> lstProduct) {
		super();
		this.id = id;
		this.name = name;
		this.avatar = avatar;
		this.status = status;
		this.lstProduct = lstProduct;
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
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public List<Products> getLstProduct() {
		return lstProduct;
	}
	public void setLstProduct(List<Products> lstProduct) {
		this.lstProduct = lstProduct;
	}
	
}
