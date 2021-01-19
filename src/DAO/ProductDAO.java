package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Products;


public class ProductDAO {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/Shopping?useSSL=false";
	private static String jdbcUserName = "root";
	private static String jdbcPassword = "KoOn711286";
	private static final String SELECT_PRODUCT_BY_ID = "select * from products where id=?";
	private static final String SELECT_ALL_PRODUCTS = "select * from products";
	private static final String SELECT_PRODUCTS_BY_TYPE = "select * from products where type=?";
	public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();

            conn = (Connection) DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch(InstantiationException e){
            e.printStackTrace();
        }catch(IllegalAccessException e){
            e.printStackTrace();
        }
            return conn;

    }
	public Products selectProduct(String id) {
		Products product = null;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
			preparedStatement.setString(1, id);;
			System.out.print(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				String name = rs.getString("name");
				String description = rs.getString("description");
				String imgUrl = rs.getString("imgUrl");
				String imgUrlHover = rs.getString("imgUrlHover");
				String oldPrice = rs.getString("oldPrice");
				String price = rs.getString("price");
				String percent = rs.getString("percent");
				String type = rs.getString("type");
				boolean newProduct = rs.getBoolean("newProduct");
				boolean offer = rs.getBoolean("offer");
				boolean discount = rs.getBoolean("discount");
				product = new Products(id, description, name, imgUrl, imgUrlHover, oldPrice, percent, price, type, newProduct, offer, discount);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}
	public List<Products> selectTypeProduct(String type) {
		List<Products> products = new ArrayList<>();
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS_BY_TYPE);) {
			preparedStatement.setString(1, type);;
			System.out.print(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				String name = rs.getString("name");
				String description = rs.getString("description");
				String imgUrl = rs.getString("imgUrl");
				String imgUrlHover = rs.getString("imgUrlHover");
				String oldPrice = rs.getString("oldPrice");
				String price = rs.getString("price");
				String percent = rs.getString("percent");
				String id = rs.getString("id");
				boolean newProduct = rs.getBoolean("newProduct");
				boolean offer = rs.getBoolean("offer");
				boolean discount = rs.getBoolean("discount");
				products.add(new Products(id, description, name, imgUrl, imgUrlHover, oldPrice, percent, price, type, newProduct, offer, discount));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	public List<Products> selectAllProducts() {
		List<Products> products = new ArrayList<>();
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS);) {
			System.out.print(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String description = rs.getString("description");
				String imgUrl = rs.getString("imgUrl");
				String imgUrlHover = rs.getString("imgUrlHover");
				String oldPrice = rs.getString("oldPrice");
				String price = rs.getString("price");
				String percent = rs.getString("percent");
				String type = rs.getString("type");
				boolean newProduct = rs.getBoolean("newProduct");
				boolean offer = rs.getBoolean("offer");
				boolean discount = rs.getBoolean("discount");
				products.add(new Products(id, description, name, imgUrl, imgUrlHover, oldPrice, percent, price, type, newProduct, offer, discount)); 
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	
}
