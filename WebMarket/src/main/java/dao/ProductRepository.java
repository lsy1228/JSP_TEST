package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList();
	
	// ProductRepository 인스턴스를 하나만 공유하게끔 싱글톤 패턴을 이용 
	private static ProductRepository instance = new ProductRepository();
	
	// ProductRepository 인스턴스를 리턴하는 getter 메서드
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("P1234", "Galaxy", 120000);
		phone.setDescription("5.25 inch, 1234*750 HD display, 16-megapixel Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("SAMSUNG");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.jpeg");
		
		Product notebook = new Product("P1235", "LG", 200000);
		notebook.setDescription("13.25 inch, FULL HD display, 16-megapixel Camera");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.jpeg");
		
		Product tablet = new Product("P1236", "Galaxy Tab", 90000);
		tablet.setDescription("2.25 inch, SUPER AMOLED display, 16-megapixel Camera");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("SAMSUNG");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.jpeg");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	// listOfProducts에 저장된 모든 상품 목록을 조회를 해서 상품아이디와 넘어온 아이디와 비교해서 일치하는 상품을 리턴해주는 메소드 
	public Product getProductById(String id) {
		Product productById = null;
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(id)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	// 상품을 추가하는 메서드 
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	

}
