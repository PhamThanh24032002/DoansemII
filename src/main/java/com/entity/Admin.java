package com.entity;


import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Admin")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "password")
    private String password;

    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "phone",unique = true)
    private String phone;

    @Column(name = "status", nullable = true)
    private Boolean status;

    public Admin() {
    }

	public Admin(int id, String name, String avatar, String password, String email, String phone, Boolean status) {
		super();
		this.id = id;
		this.name = name;
		this.avatar = avatar;
		this.password = password;
		this.email = email;
		this.phone = phone;
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

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", avatar=" + avatar + ", password=" + password + ", email="
				+ email + ", phone=" + phone + ", status=" + status + "]";
	}

   
}
