package ex0413.el;

public class Product {
	private String code = "A001";
	private String name = "ºóÃ÷";
	private int price = 2500;
	private int qty = 5;
	
	public String getCode() {
		System.out.println("getCode È£ÃâµÊ");
		return code;
	}
	public String getName() {
		return name;
	}
	public int getPrice() {
		return price;
	}
	public int getQty() {
		return qty;
	}	
}
