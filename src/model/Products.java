package model;

public class Products {
	private String id;
	private String description;
	private String name;
	private String imgUrl;
	private String imgUrlHover;
	private String oldPrice;
	private String percent;
	private String price;
	private String type;
	private boolean newProduct;
	private boolean offer;
	private boolean discount;
	public Products(String id, String description, String name, String imgUrl, String imgUrlHover, String oldPrice,
			String percent, String price, String type, boolean newProduct, boolean offer, boolean discount) {
		super();
		this.id = id;
		this.description = description;
		this.name = name;
		this.imgUrl = imgUrl;
		this.imgUrlHover = imgUrlHover;
		this.oldPrice = oldPrice;
		this.percent = percent;
		this.price = price;
		this.type = type;
		this.newProduct = newProduct;
		this.offer = offer;
		this.discount = discount;
	}
	public Products(String description, String name, String imgUrl, String imgUrlHover, String oldPrice, String percent,
			String price, String type, boolean newProduct, boolean offer, boolean discount) {
		super();
		this.description = description;
		this.name = name;
		this.imgUrl = imgUrl;
		this.imgUrlHover = imgUrlHover;
		this.oldPrice = oldPrice;
		this.percent = percent;
		this.price = price;
		this.type = type;
		this.newProduct = newProduct;
		this.offer = offer;
		this.discount = discount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getImgUrlHover() {
		return imgUrlHover;
	}
	public void setImgUrlHover(String imgUrlHover) {
		this.imgUrlHover = imgUrlHover;
	}
	public String getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(String oldPrice) {
		this.oldPrice = oldPrice;
	}
	public String getPercent() {
		return percent;
	}
	public void setPercent(String percent) {
		this.percent = percent;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public boolean isNewProduct() {
		return newProduct;
	}
	public void setNewProduct(boolean newProduct) {
		this.newProduct = newProduct;
	}
	public boolean isOffer() {
		return offer;
	}
	public void setOffer(boolean offer) {
		this.offer = offer;
	}
	public boolean isDiscount() {
		return discount;
	}
	public void setDiscount(boolean discount) {
		this.discount = discount;
	}
	
}
