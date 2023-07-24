package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.ClassData;
import ucstt.classmanagement.Utility.DBUtility;

public class ClassDAO {

	Connection connection=DBUtility.getConnection();

	public List<ClassData> Retrieval(){
		List<ClassData> classDataList=new ArrayList<>();
		String query="select * from m_class";
		PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);
		ResultSet result=DBUtility.getResult(statement);
		try {
			ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData();
			while(result.next()){
				ClassData classData=new ClassData();
				classData.setClassNo(result.getString(columnName.getColumnName(1)));
				classData.setClassName(result.getString(columnName.getColumnName(2)));

				classDataList.add(classData);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return classDataList;
	}
}
