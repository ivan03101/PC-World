package edu.fau.group3.model;

public class GPU_Table {
	private int GPU_ID; 
    private String Brand; 
    private String GPU;  
    private int Price;
     
      public GPU_Table() {
      }

	public GPU_Table(int GPU_ID, String Brand, 
			String GPUType, int Price) {
		super();
		
		this.GPU_ID = GPU_ID;
		this.Brand = Brand;
		this.GPU = GPUType;
		this.Price = Price;
	}

	public int getGPU_ID() {
		return GPU_ID;
	}

	public void setGPU_ID(int GPU_ID) {
		this.GPU_ID = GPU_ID;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String Brand) {
		this.Brand = Brand;
	}

	public String getGPUType() {
		return GPU;
	}

	public void setGPUType(String GPU) {
		this.GPU = GPU;
	}
	
	public int getPrice() {
		return Price;
	}

	public void setPrice(int Price) {
		this.Price = Price;
	}


}
