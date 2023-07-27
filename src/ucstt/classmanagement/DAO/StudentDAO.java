package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.Student;
import ucstt.classmanagement.Utility.DBUtility;

public class StudentDAO {
	Connection connection=DBUtility.getConnection();

	public List<Student> getAttandanceData(String classNo){
		String query="select s.stud_id,s.name,s.email,s.roll_no from t_student as s inner join t_class_student as cs on s.stud_id = cs.stud_id where class_no=?";
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		List<Student> studentList=new ArrayList<>();
		try {
			statement.setString(1, classNo);
			ResultSet result=DBUtility.getResult(statement);
			ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData();
			while(result.next()){
				Student student=new Student();
				student.setStudId(result.getString(columnName.getColumnName(1)));
				student.setName(result.getString(columnName.getColumnName(2)));
				student.setEmail(result.getString(columnName.getColumnName(3)));
				student.setRollNo(result.getString(columnName.getColumnName(4)));
				studentList.add(student);
			}
			System.out.println("Retrieval Attandance Data passed.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
		}
		return studentList;
	}

}
