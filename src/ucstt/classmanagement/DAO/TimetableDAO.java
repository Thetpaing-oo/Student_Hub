package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.Timetable;
import ucstt.classmanagement.Utility.DBUtility;

public class TimetableDAO {

	Connection connection=DBUtility.getConnection();

	public List<Timetable> getTimetableData(String studID){
		String query="SELECT t.id,t.class_no,t.subj_code1,t.subj_code2,t.subj_code3,t.subj_code4,t.subj_code5,t.subj_code6 FROM `stu-hub`.t_class_student AS cs INNER JOIN `stu-hub`.m_timetable AS t ON cs.class_no=t.class_no WHERE cs.stud_id=?";
		List<Timetable> timetableList=new ArrayList<>();
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		try {
			statement.setString(1, studID);
			ResultSet result=DBUtility.getResult(statement);
			ResultSetMetaData column=(ResultSetMetaData) result.getMetaData();
			while(result.next()){
				Timetable timetable=new Timetable();
				timetable.setId(result.getInt(column.getColumnName(1)));
				timetable.setClassNo(result.getString(column.getColumnName(2)));
				timetable.setSubjectCode1(result.getString(column.getColumnName(3)));
				timetable.setSubjectCode2(result.getString(column.getColumnName(4)));
				timetable.setSubjectCode3(result.getString(column.getColumnName(5)));
				timetable.setSubjectCode4(result.getString(column.getColumnName(6)));
				timetable.setSubjectCode5(result.getString(column.getColumnName(7)));
				timetable.setSubjectCode6(result.getString(column.getColumnName(8)));
				timetableList.add(timetable);
			}
			System.out.println("Timetable Retrival passed.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Timetable Retrival failed");
		}
		return timetableList;
	}
}
