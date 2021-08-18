//https://howtoprogramwithjava.com/enums/
package com.ryan.javaproject.models;

public enum GiftCardPrice {
	
	
	  ONE(25),
	  TWO(50),
	  THREE(75),
	  FOUR(100),
	  FIVE(125),
	  SIX(150),
	  SEVEN(200),
	  EIGHT(250),
	  NINE(300),
	  TEN(350),
	  ELEVEN(400),
	  TWELVE(500);
	
	  private int giftCardPriceValue;
	 


	  private GiftCardPrice (int value)
	  {
	    this.giftCardPriceValue = value;
	  }
	 
	  public int getGiftCardPriceValue() {
	    return giftCardPriceValue;
	  }
	
}
