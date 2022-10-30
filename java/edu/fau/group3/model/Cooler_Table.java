package edu.fau.group3.model;

public class Cooler_Table {
		private int coolerId;
		private String Brand;
		private String coolerType;
		private int Price;
		
		
		public Cooler_Table() {
			super();
		}


		public Cooler_Table(int coolerId, String brand, String coolerType, int price) {
			super();
			this.coolerId = coolerId;
			this.Brand = brand;
			this.coolerType = coolerType;
			this.Price = price;
		}


		public int getCoolerId() {
			return coolerId;
		}


		public void setCoolerId(int coolerId) {
			this.coolerId = coolerId;
		}


		public String getBrand() {
			return Brand;
		}


		public void setBrand(String brand) {
			Brand = brand;
		}


		public String getCoolerType() {
			return coolerType;
		}


		public void setCoolerType(String coolerType) {
			this.coolerType = coolerType;
		}


		public int getPrice() {
			return Price;
		}


		public void setPrice(int price) {
			Price = price;
		}
		
		
		
		
}
