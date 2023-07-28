package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.Attandance;
import ucstt.classmanagement.Utility.DBUtility;

public class AttandanceDAO {

	Connection connection=DBUtility.getConnection();

	public int attendanceDataInsertion(String studentID,String subjectCode){
		String query="insert into t_attandance (student_id,subject_code,count,date) values(?,?,?,?)";
		int flag=0;
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		try {
			statement.setString(1,studentID);
			statement.setString(2, subjectCode);
			statement.setInt(3, 1);
			Date localDate=Date.valueOf(LocalDate.now());
			statement.setDate(4, localDate);
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

	public List<Attandance> getWeeklyAttandance(String studentID){
		String query="SELECT * FROM t_attandance WHERE WEEK(date) = WEEK(CURDATE()) AND student_id=? ORDER BY date ASC";
		List<Attandance> attandanceList=new ArrayList<>();
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		try {
			statement.setString(1, studentID);
			ResultSet result=DBUtility.getResult(statement);
			System.out.println("Weekly Attandance Retrieval passed.");
			ResultSetMetaData column=(ResultSetMetaData) result.getMetaData();
			while(result.next()){
				Attandance attandance=new Attandance();
				attandance.setId(result.getInt(column.getColumnName(1)));
				attandance.setStudentId(result.getString(column.getColumnName(2)));
				attandance.setSubjectCode(result.getString(column.getColumnName(3)));
				attandance.setCount(result.getInt(column.getColumnName(4)));
				attandance.setDate(result.getDate(column.getColumnName(5)));
				attandanceList.add(attandance);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
			System.out.println("Weekly Attandance Retrieval failed.");
		}
		return attandanceList;
	}

	public List<Attandance> getMonthlyAttandance(String studentID){
		String query = "SELECT * FROM t_attandance WHERE MONTH(date) = MONTH(CURDATE()) AND YEAR(date) = YEAR(CURDATE()) AND student_id=? ORDER BY date ASC";
		List<Attandance> attandanceList=new ArrayList<>();
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		try {
			statement.setString(1, studentID);
			ResultSet result=DBUtility.getResult(statement);
			System.out.println("Monthly Attandance Retrieval passed.");
			ResultSetMetaData column=(ResultSetMetaData) result.getMetaData();
			while(result.next()){
				Attandance attandance=new Attandance();
				attandance.setId(result.getInt(column.getColumnName(1)));
				attandance.setStudentId(result.getString(column.getColumnName(2)));
				attandance.setSubjectCode(result.getString(column.getColumnName(3)));
				attandance.setCount(result.getInt(column.getColumnName(4)));
				attandance.setDate(result.getDate(column.getColumnName(5)));
				attandanceList.add(attandance);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
			System.out.println("Monthly Attandance Retrieval failed.");
		}
		return attandanceList;
	}
}
