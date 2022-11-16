package com.taiso.car.db;

public class CarDTO {
	
	private int car_code;
	private String car_brand;
	private String car_name;
	private int car_location;
	private int car_price;
	private String car_op;
	private String car_category;
	private String car_file;
	private String car_year;
	private int car_fuel;
	
	// getter setter
	public int getCar_code() {
		return car_code;
	}
	public void setCar_code(int car_code) {
		this.car_code = car_code;
	}
	public String getCar_brand() {
		return car_brand;
	}
	public void setCar_brand(String car_brand) {
		this.car_brand = car_brand;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getCar_location() {
		return car_location;
	}
	public void setCar_location(int car_location) {
		this.car_location = car_location;
	}
	public int getCar_price() {
		return car_price;
	}
	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}
	public String getCar_op() {
		return car_op;
	}
	public void setCar_op(String car_op) {
		this.car_op = car_op;
	}
	public String getCar_category() {
		return car_category;
	}
	public void setCar_category(String car_category) {
		this.car_category = car_category;
	}
	public String getCar_file() {
		return car_file;
	}
	public void setCar_file(String car_file) {
		this.car_file = car_file;
	}
	public String getCar_year() {
		return car_year;
	}
	public void setCar_year(String car_year) {
		this.car_year = car_year;
	}
	public int getCar_fuel() {
		return car_fuel;
	}
	public void setCar_fuel(int car_fuel) {
		this.car_fuel = car_fuel;
	}
	
	// toString
	@Override
	public String toString() {
		return "CarDTO [car_code=" + car_code + ", car_brand=" + car_brand + ", car_name=" + car_name
				+ ", car_location=" + car_location + ", car_price=" + car_price + ", car_op=" + car_op
				+ ", car_category=" + car_category + ", car_file=" + car_file + ", car_year=" + car_year + ", car_fuel="
				+ car_fuel + "]";
	}
	
	
	
}
