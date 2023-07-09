package ucstt.classmanagement.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.User;
import ucstt.classmanagement.Utility.DBUtility;

public class userDAO {
	Connection connection=DBUtility.getConnection();
	public userDAO() {}

	public void insertion(User user) {
		String query="insert into user(id,username,email,password,phone,role,gender,address,del_flag,creation_by,creation_timestamp,update_by,updatation_timestamp)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
		try {
			preparedStatement.setString(1,user.getId());
			preparedStatement.setString(2,user.getUsername());
			preparedStatement.setString(3,user.getEmail());
			preparedStatement.setString(4,user.getPassword());
			preparedStatement.setString(5,user.getPhone());
			preparedStatement.setString(6,user.getRole());
			preparedStatement.setString(7,user.getGender());
			preparedStatement.setString(8,user.getAddress());
			preparedStatement.setString(9,user.getDel_flag());
			preparedStatement.setString(10,user.getCreation_by());
			preparedStatement.setTimestamp(11,user.getCreation_timestamp());
			preparedStatement.setString(12,user.getUpdate_by());
			preparedStatement.setTimestamp(13,user.getUpdatation_timestamp());

			preparedStatement.executeUpdate();
			System.out.println("Insert successfully.");
		} catch (SQLException e) {
			System.out.println("Insert Data Failed.");
		}
	}

	public void updationByPK(User user) {
		String query="update user set email=?,password=? where admin_name=?";
		PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
		try {
			/*preparedStatement.setString(1,user.email);
			preparedStatement.setString(2,user.password);
			preparedStatement.setString(3,user.name);*/

			preparedStatement.executeUpdate();
			System.out.println("Update successfully.");
		} catch (SQLException e) {
			System.out.println("Update Data Failed.");
		}
	}

	public void deletion(String name) {
		String query="delete from user where admin_name=?";
		PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
		try {
			preparedStatement.setString(1,name);

			preparedStatement.executeUpdate();
			System.out.println("Delete successfully.");
		} catch (SQLException e) {
			System.out.println("Delete Failed.");
		}
	}

	public User getUser(User user) {
		String query="select * from user where admin_name=?";
		PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
		try {
			//preparedStatement.setString(1,user.name);

			ResultSet result=DBUtility.getResult(preparedStatement);
			ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData(); //to getColumnName
			while(result.next()) {
				//user.setName(result.getString(columnName.getColumnName(1)));
				user.setEmail(result.getString(columnName.getColumnName(2)));
				user.setPassword(result.getString(columnName.getColumnName(3)));
			}
		} catch (SQLException e) {
			System.out.println("Retrieve Failed.");
		}
		return user;
	}

	public List<User> getAllUser(){
		List<User> userList=new ArrayList<>();
		String query="select * from user";
		PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
		try {
			ResultSet result=DBUtility.getResult(preparedStatement);
			ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData(); //to getColumnName
			while(result.next()) {
				User user=new User();
				user.setId(result.getString(columnName.getColumnName(1)));
				user.setUsername(result.getString(columnName.getColumnName(2)));
				user.setEmail(result.getString(columnName.getColumnName(3)));
				user.setPassword(result.getString(columnName.getColumnName(4)));
				user.setPhone(result.getString(columnName.getColumnName(5)));
				user.setRole(result.getString(columnName.getColumnName(6)));
				user.setGender(result.getString(columnName.getColumnName(7)));
				user.setAddress(result.getString(columnName.getColumnName(8)));
				user.setDel_flag(result.getString(columnName.getColumnName(9)));
				user.setCreation_by(result.getString(columnName.getColumnName(10)));
				user.setCreation_timestamp(result.getTimestamp(columnName.getColumnName(11)));
				user.setUpdate_by(result.getString(columnName.getColumnName(12)));
				user.setUpdatation_timestamp(result.getTimestamp(columnName.getColumnName(13)));

				userList.add(user);
			}
		} catch (SQLException e) {
			System.out.println("Retrieve all Failed.");
		}
		return userList;
	}
}
