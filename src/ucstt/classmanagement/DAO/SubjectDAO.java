package ucstt.classmanagement.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ucstt.classmanagement.Model.Subject;
import ucstt.classmanagement.Utility.DBUtility;

public class SubjectDAO {
Connection connection=DBUtility.getConnection();

      public List<Subject> getSubjectCode(){
    	  String query="select * from m_subject";
    	  List<Subject> subjectList=new ArrayList<>();
    	  PreparedStatement statement=DBUtility.getPreparedStatement(connection, query);

    	  try{
    		  ResultSet result=DBUtility.getResult(statement);
    		  System.out.println("Subject data retrieval passed.");
    		  ResultSetMetaData columnName=(ResultSetMetaData) result.getMetaData();
    		  while(result.next()){
    			  Subject subject=new Subject();
    			  subject.setSubjectCode(result.getString(columnName.getColumnName(1)));
    			  subject.setSubjectName(result.getString(columnName.getColumnName(2)));
    			  subjectList.add(subject);
    		  }
    	  }catch(SQLException e){
    		  e.printStackTrace();
    		  System.out.println(e);
    	  }
    	  return subjectList;
      }
}
