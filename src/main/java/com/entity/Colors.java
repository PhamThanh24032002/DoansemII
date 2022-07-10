package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "Colors")
public class Colors {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name")
    @NotEmpty(message = "Vui lòng điền tên màu!!")
    private String name;

    @Column(name = "value")
    @NotEmpty(message = "Vui lòng chọn giá trị của màu!!")
    private String value;
    
    @OneToMany(mappedBy="colors")
    private List<Product_detail> lstProductDetail;
    
	public Colors() {
		super();
	}

	public Colors(int id, String name, String value, List<Product_detail> lstProductDetail) {
		super();
		this.id = id;
		this.name = name;
		this.value = value;
		this.lstProductDetail = lstProductDetail;
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

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public List<Product_detail> getLstProductDetail() {
		return lstProductDetail;
	}

	public void setLstProductDetail(List<Product_detail> lstProductDetail) {
		this.lstProductDetail = lstProductDetail;
	}

	
	
}
