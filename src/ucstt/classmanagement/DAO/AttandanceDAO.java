package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import ucstt.classmanagement.Utility.DBUtility;

public class AttandanceDAO {

	Connection connection=DBUtility.getConnection();

	public int attendanceDataInsertion(String studentID,String subjectCode){
		String query="insert into t_attandance (student_id,subject_code,count) values(?,?,?)";
		int flag=0;
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		try {
			statement.setString(1,studentID);
			statement.setString(2, subjectCode);
			statement.setInt(3, 1);
			flag=statement.executeUpdate();
			System.out.println("Attandance Data Insertion passed.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
			System.out.println("Attandance Data Insertion failed.");
		}
		return flag;
	}
}
