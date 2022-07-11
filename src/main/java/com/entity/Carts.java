package com.entity;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Carts")
public class Carts {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "proId")
    private int proId;

    @Column(name = "quantity")
    private int quantity;

    @Column(name = "total")
    private int total;

    @Column(name = "cusId")
    private int cusId;

	public Carts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Carts(int id, int proId, int quantity, int total, int cusId) {
		super();
		this.id = id;
		this.proId = proId;
		this.quantity = quantity;
		this.total = total;
		this.cusId = cusId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProId() {
		return proId;
	}

	public void setProId(int proId) {
		this.proId = proId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCusId() {
		return cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}

}
