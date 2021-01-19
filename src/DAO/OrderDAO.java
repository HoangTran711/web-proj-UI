package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Order;
import model.Products;

public class OrderDAO {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/Shopping?useSSL=false";
	private static String jdbcUserName = "root";
	private static String jdbcPassword = "KoOn711286";
	private static final String INSERT_ORDER = "insert into orders(id,firstName,lastName,company,address,city,country,postcode,email,phone,amount,products) values (?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String SELECT_ALL_ORDERS = "select * from orders";
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
	public List<Order> selectAllOrders() {
		List<Order> orders = new ArrayList<>();
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ORDERS);) {
			System.out.print(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String  firstName= rs.getString("firstName");
				String lastName = rs.getString("lastName");
				String company = rs.getString("company");
				String address = rs.getString("address");
				String city = rs.getString("city");
				String country = rs.getString("country");
				String postcode = rs.getString("postcode");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String products = rs.getString("products");
				String amount = rs.getString("amount");
				orders.add(new Order(id, firstName, lastName, company, address, city, country, postcode, email, phone, amount, products));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orders;
	}
	public int registerOrder(Order order) {
		int result = 0;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER);) {
			preparedStatement.setString(1, order.getId());
			preparedStatement.setString(2, order.getFirstName());
			preparedStatement.setString(3, order.getLastName());
			preparedStatement.setString(4, order.getCompany());
			preparedStatement.setString(5, order.getAddress());
			preparedStatement.setString(6, order.getCity());
			preparedStatement.setString(7, order.getCountry());
			preparedStatement.setString(8, order.getPostcode());
			preparedStatement.setString(9, order.getEmail());
			preparedStatement.setString(10, order.getPhone());
			preparedStatement.setString(11, order.getAmount());
			preparedStatement.setString(12, order.getProducts());
			
			System.out.print(preparedStatement);
			result = preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
}
