package ucstt.classmanagement.Model;

import java.sql.Date;

public class Attandance {
int id;
String studentId;
String subjectCode;
int count;
Date date;
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getStudentId() {
	return studentId;
}
public void setStudentId(String studentId) {
	this.studentId = studentId;
}
public String getSubjectCode() {
	return subjectCode;
}
public void setSubjectCode(String subjectCode) {
	this.subjectCode = subjectCode;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
}
