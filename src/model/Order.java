package model;

public class Order {
	private String id;
	private String firstName;
	private String lastName;
	private String company;
	private String address;
	private String city;
	private String country;
	private String postcode;
	private String email;
	private String phone;
	private String amount;
	private String products;
	
	

	public Order(String id, String firstName, String lastName, String company, String address, String city,
			String country, String postcode, String email, String phone, String amount, String products) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.company = company;
		this.address = address;
		this.city = city;
		this.country = country;
		this.postcode = postcode;
		this.email = email;
		this.phone = phone;
		this.amount = amount;
		this.products = products;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getProducts() {
		return products;
	}
	public void setProducts(String products) {
		this.products = products;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
