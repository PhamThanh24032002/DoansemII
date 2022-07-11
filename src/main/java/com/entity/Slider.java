package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "slider")
public class Slider {
	
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
	    
	    @Column(name = "position")
	    private String position;
	    
	    @Column(name = "status")
	    private String status;

		public Slider(int id, String title, String content_sub, String image, String position, String status) {
			super();
			this.id = id;
			this.title = title;
			this.content_sub = content_sub;
			this.image = image;
			this.position = position;
			this.status = status;
		}

		public Slider() {
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

		public String getPosition() {
			return position;
		}

		public void setPosition(String position) {
			this.position = position;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}
	    
	    
}
