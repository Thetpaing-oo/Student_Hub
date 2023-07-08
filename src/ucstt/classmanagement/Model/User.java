package ucstt.classmanagement.Model;

import java.sql.Timestamp;

public class User {

	public User(){}
	String id;
	String username;
	String email;
	String password;
	String phone;
	String role;
	String gender;
	String address;
	String del_flag;
	String creation_by;
	Timestamp creation_timestamp;
	String update_by;
	Timestamp updatation_timestamp;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDel_flag() {
		return del_flag;
	}
	public void setDel_flag(String del_flag) {
		this.del_flag = del_flag;
	}
	public String getCreation_by() {
		return creation_by;
	}
	public void setCreation_by(String creation_by) {
		this.creation_by = creation_by;
	}
	public Timestamp getCreation_timestamp() {
		return creation_timestamp;
	}
	public void setCreation_timestamp(Timestamp creation_timestamp) {
		this.creation_timestamp = creation_timestamp;
	}
	public String getUpdate_by() {
		return update_by;
	}
	public void setUpdate_by(String update_by) {
		this.update_by = update_by;
	}
	public Timestamp getUpdatation_timestamp() {
		return updatation_timestamp;
	}
	public void setUpdatation_timestamp(Timestamp updatation_timestamp) {
		this.updatation_timestamp = updatation_timestamp;
	}


}
