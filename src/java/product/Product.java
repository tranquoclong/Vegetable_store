/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

import java.util.Date;

/**
 *
 * @author longtq
 */
public class Product {

    private String productID;
    private String productName;
    private String image;
    private int price;
    private int quantity;
    private String categoryID;
    private Date importDate;
    private Date usingDate;

    public Product(String productID, String productName, String image, int price, int quantity, String categoryID, Date importDate, Date usingDate) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.categoryID = categoryID;
        this.importDate = importDate;
        this.usingDate = usingDate;
    }

    public Product() {
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public Date getImportDate() {
        return importDate;
    }

    public void setImportDate(Date importDate) {
        this.importDate = importDate;
    }

    public Date getUsingDate() {
        return usingDate;
    }

    public void setUsingDate(Date usingDate) {
        this.usingDate = usingDate;
    }

}
