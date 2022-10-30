package edu.fau.group3.model;

public class PSU_Table {
	private int psuId;
	private String Brand;
	private String psuType;
	private int Price;
	
	public PSU_Table() {
		super();
	}

	public PSU_Table(int psuId, String brand, String psuType, int price) {
		super();
		this.psuId = psuId;
		this.Brand = brand;
		this.psuType = psuType;
		this.Price = price;
	}

	public int getPsuId() {
		return psuId;
	}

	public void setPsuId(int psuId) {
		this.psuId = psuId;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public String getPsuType() {
		return psuType;
	}

	public void setPsuType(String psuType) {
		this.psuType = psuType;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}
	
	
	
	
	
}
