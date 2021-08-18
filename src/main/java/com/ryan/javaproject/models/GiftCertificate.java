package com.ryan.javaproject.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

//https://www.w3schools.com/java/java_enums.asp
//enum Amount{
//	TwentyFive;
////	, 50, 75, 100, 125, 150, 200, 250, 300,350, 400, 500
//}



@Entity
@Table(name="giftcertificates")
public class GiftCertificate {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@Size(min=2, message="Please enter your name.")
	public String buyerName;
	@Size(min=2, message="Please enter your email.")	
	public String buyerEmail;
	@Size(min=2, message="Please enter the name of the recipient.")
	public String receiveName;
	@Size(min=2, message="Please enter the email of the recipient.")
	public String receiveEmail;
//	@Size(min=0, message="Please enter the amount you'd like to purchase.")
	public int amount;
	
	public String message;
	
	
//	ManytoOne User/buyer.
//	many/one to one giftcardprice/giftcard
//	private GiftCardPrice giftCardPrice;
//	
//	
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;
	
	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
	}
	@PreUpdate
	protected void onUpdate(){
		this.updatedAt = new Date();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
//	public GiftCertificate(GiftCardPrice giftCardPrice, BuyerName buyerName, BuyerEmail buyerEmail, ReceiveName receiveName, Amount amount, ReceiveEmail receiveEmail ){
//		this.amount = amount;
//		this.buyerEmail = buyerEmail;
//		this.buyerName=buyerName;
//		this.receiveEmail=receiveEmail;
//		this.receiveName=receiveName;
//		this.giftCardPrice= giftCardPrice;
//	}
	
	
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getBuyerEmail() {
		return buyerEmail;
	}
	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getReceiveEmail() {
		return receiveEmail;
	}
	public void setReceiveEmail(String receiveEmail) {
		this.receiveEmail = receiveEmail;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	
	
	
}
