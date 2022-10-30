package edu.fau.group3.model;

public class Storage_Table {
    private int Storage_ID; 
    private String Brand; 
    private String StorageType;  
    private int Price;
     
      public Storage_Table() {
      }

	public Storage_Table(int Storage_ID, String Brand, 
			String StorageType, int Price) {
		super();
		
		this.Storage_ID = Storage_ID;
		this.Brand = Brand;
		this.StorageType = StorageType;
		this.Price = Price;
	}

	public int getStorage_Id() {
		return Storage_ID;
	}

	public void setStorage_Id(int Storage_ID) {
		this.Storage_ID = Storage_ID;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String Brand) {
		this.Brand = Brand;
	}

	public String getStorageType() {
		return StorageType;
	}

	public void setStorageType(String Storage) {
		this.StorageType = Storage;
	}
	
	public int getPrice() {
		return Price;
	}

	public void setPrice(int Price) {
		this.Price = Price;
	}

}
    
