

package ucstt.classmanagement.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.Statement;

import ucstt.classmanagement.Model.Posts;
import ucstt.classmanagement.Model.User;
import ucstt.classmanagement.Utility.DBUtility;

public class userDAO {
	Connection connection=DBUtility.getConnection();
	public userDAO() {}
	
	public ResultSet getTimetable() {
		String query="select * from m_timetable";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, query);
		try {
			ResultSet rs=result.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public List<Posts> getAllPosts(){
	    List<Posts> postList=new ArrayList<>();
	    String query="select * from x_school_activity";
	    PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
	    try {
	      ResultSet result=DBUtility.getResult(preparedStatement);
	      ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData(); //to getColumnName
	      while(result.next()) {
	        Posts post=new Posts();
	        post.setId(result.getString(columnName.getColumnName(1)));
	        post.setCaption(result.getString(columnName.getColumnName(2)));
	       
	        post.setcreatedBy(result.getString(columnName.getColumnName(3)));
	        post.setupdateBy(result.getString(columnName.getColumnName(4)));
	        post.setcreationTimestamp(result.getString(columnName.getColumnName(5)));
	        post.setupdatationTimestamp(result.getString(columnName.getColumnName(6)));
	        post.setAbst(result.getString(columnName.getColumnName(7)));
	        post.setAffair(result.getString(columnName.getColumnName(8)));
	        System.out.println(columnName.getColumnName(7));

	        postList.add(post);
	      }
	    } catch (SQLException e) {
	      System.out.println("Retrieve all Failed.");
	    }
	    return postList;
	  }
	
	public ResultSet getPosts() {
		String query="select * from x_school_activity";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, query);
		try {
			ResultSet rs=result.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public boolean postUpload(String query) {
		PreparedStatement stmt=DBUtility.getPreparedStatement(connection, query);
		try {
			stmt.execute();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public ResultSet getClassmangenent() {
		String query="select * from m_class";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, query);
		try {
			ResultSet rs=result.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public String getMaxid() {
		String query="select * from m_user where id =(select max(id) from m_user)";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, query);
		String s=null;
		try {
			ResultSet rs=result.executeQuery();
			if(rs.next()) {
				s=rs.getString("id");
				return s;
			}else {
				System.out.println("no rs set");
				return s;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
		
	}
	
	public boolean login(User user) {
		String query="select * from m_user where email='"+user.getEmail()+"'";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, query);
		try {
			ResultSet rs=result.executeQuery();
			if(rs.next()) {
				String oldPass=rs.getString("password");
				String pass=user.getPassword();
				if(oldPass.equals(pass)) {
					System.out.println("successfull");
					return true;
				}else {
					System.out.println("pass not match");
					return false;
				}
			}else {
				System.out.println("no email exist");
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	public boolean insertion(User user) {
		String query="INSERT INTO m_user  (`id`, `username`, `email`, `password`, `phone`, `role`, `gender`, `address`) VALUES ('"+user.getId()+"','"+user.getUsername()+"', '"+user.getEmail()+"', '"+user.getPassword()+"', '"+user.getPhone()+"', '"+user.getRole()+"', '"+user.getGender()+"', '"+user.getAddress()+"')";
		PreparedStatement result=DBUtility.getPreparedStatement(connection, "select * from m_user where email='"+user.getEmail()+"'");
		try {
			ResultSet rs=result.executeQuery();
			if(rs.next()) {
				System.out.println("account already exists");
				return false;
			}else {
				PreparedStatement preparedStatement=DBUtility.getPreparedStatement(connection, query);
				try {
					preparedStatement.execute();
					System.out.println("Successflly inserted");
					return true;
				} catch (SQLException e) {
					System.out.println("error");
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
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
		String query="select * from m_user";
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
