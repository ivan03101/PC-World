package edu.fau.group3.model;

public class Motherboard_Table{
	private int motherboardId;
	private String Brand;
	private String motherboardType;
	private int Price;
	
	public Motherboard_Table() {
		super();
	}

	public Motherboard_Table(int motherboardId, String brand, String motherboardType, int price) {
		super();
		this.motherboardId = motherboardId;
		this.Brand = brand;
		this.motherboardType = motherboardType;
		this.Price = price;
	}

	public int getMotherboardId() {
		return motherboardId;
	}

	public void setMotherboardId(int motherboardId) {
		this.motherboardId = motherboardId;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public String getMotherboardType() {
		return motherboardType;
	}

	public void setMotherboardType(String motherboardType) {
		this.motherboardType = motherboardType;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}
	
	
	
	
}
