package edu.fau.group3.model;

public class Monitor_Table {
	private int monitorId;
	private String Brand;
	private String monitorType;
	private int Price;
	
	public Monitor_Table() {
		super();
	}

	public Monitor_Table(int monitorId, String brand, String monitorType, int price) {
		super();
		this.monitorId = monitorId;
		this.Brand = brand;
		this.monitorType = monitorType;
		this.Price = price;
	}

	public int getMonitorId() {
		return monitorId;
	}

	public void setMonitorId(int monitorId) {
		this.monitorId = monitorId;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public String getMonitorType() {
		return monitorType;
	}

	public void setMonitorType(String monitorType) {
		this.monitorType = monitorType;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}
	
	
	
		
	}