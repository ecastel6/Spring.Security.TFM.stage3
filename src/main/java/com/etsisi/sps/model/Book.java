package com.etsisi.sps.model;

import java.math.BigDecimal;
import java.util.List;

public class Book {
    Integer id;
    String author;
    String title;
    Double price;
    String description;

	public boolean isNew() {
		return (this.id == null);
	}

    public Book() {
    }

    public Book(Integer id, String author, String title, Double price, String description) {
        this.id = id;
        this.author = author;
        this.title = title;
        this.price = price;
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Book[" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ']'+isNew();
    }
}
