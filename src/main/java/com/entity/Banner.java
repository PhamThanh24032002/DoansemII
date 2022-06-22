package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "banner")
public class Banner {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "content_sub")
    private String content_sub;
    
    @Column(name = "image")
    private String image;
    
    @Column(name = "page")
    private String page;
    
    @Column(name = "status")
    private String status;

	public Banner(int id, String title, String content_sub, String image, String page, String status) {
		super();
		this.id = id;
		this.title = title;
		this.content_sub = content_sub;
		this.image = image;
		this.page = page;
		this.status = status;
	}

	public Banner() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent_sub() {
		return content_sub;
	}

	public void setContent_sub(String content_sub) {
		this.content_sub = content_sub;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
    
    
}
