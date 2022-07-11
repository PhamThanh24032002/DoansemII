package com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "Blog")
public class Blog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "title")
    private String title;

    @Column(name = "writen_by")
    private String writen_by;

    @Column(name = "image")
    private String image;

    @Column(name = "description")
    private String description;

    @Column(name = "created_at")
    private String created_at;

    public Blog() {
    }

	public Blog(int id, String title, String writen_by, String image, String description, String created_at) {
		super();
		this.id = id;
		this.title = title;
		this.writen_by = writen_by;
		this.image = image;
		this.description = description;
		this.created_at = created_at;
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

	public String getWriten_by() {
		return writen_by;
	}

	public void setWriten_by(String writen_by) {
		this.writen_by = writen_by;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

}
