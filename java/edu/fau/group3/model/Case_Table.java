package edu.fau.group3.model;

// store info from case table 
public class Case_Table {
	private int caseId;
	private String Brand;
	private String caseType;
	private int Price;
	
	public Case_Table() {
		
	}

	public Case_Table(int caseId, String Brand, String Case, int Price) {
		super();
		this.caseId = caseId;
		this.Brand = Brand;
		this.caseType = Case;
		this.Price = Price;
	}

	public int getCaseId() {
		return caseId;
	}

	public void setCaseId(int caseId) {
		this.caseId = caseId;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		this.Brand = brand;
	}

	public String getcaseType() {
		return caseType;
	}

	public void setcaseType(String caseType) {
		this.caseType = caseType;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		this.Price = price;
	}
	

}
