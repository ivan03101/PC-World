package edu.fau.group3.model;

public class CPU_Table {
    private int CPU_ID; 
    private String Brand; 
    private String CPU;  
    private int Price;
     
      public CPU_Table() {
    	  
      }

	public CPU_Table(int CPU_ID, String Brand, 
			String CPUType, int Price) {
		super();
		
		this.CPU_ID = CPU_ID;
		this.Brand = Brand;
		this.CPU = CPUType;
		this.Price = Price;
	}

	public int getcpu_Id() {
		return CPU_ID;
	}

	public void setcpu_Id(int CPU_ID) {
		this.CPU_ID = CPU_ID;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String Brand) {
		this.Brand = Brand;
	}

	public String getCPUType() {
		return CPU;
	}

	public void setCPUType(String CPU) {
		this.CPU = CPU;
	}
	
	public int getPrice() {
		return Price;
	}

	public void setPrice(int Price) {
		this.Price = Price;
	}

}
    
