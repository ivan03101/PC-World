package edu.fau.group3.model;

public class Memory_Table {
	private int memoryId;
	private String Brand;
	private String Memory;
	private int Price;
	
	public Memory_Table() {
		
	}

	public Memory_Table(int memoryId, String Brand, String Memory, int Price) {
		super();
		this.memoryId = memoryId;
		this.Brand = Brand;
		this.Memory = Memory;
		this.Price = Price;
	}

	public int getMemoryId() {
		return memoryId;
	}

	public void setMemoryId(int memoryId) {
		this.memoryId = memoryId;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		this.Brand = brand;
	}

	public String getMemory() {
		return Memory;
	}

	public void setMemory(String memory) {
		this.Memory = memory;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		this.Price = price;
	}
	

}
