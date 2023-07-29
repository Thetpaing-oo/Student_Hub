package ucstt.classmanagement.Model;

public class Posts {
	public Posts() {}
	String id;
	String caption;
	String abst;
	String affair;
	String created_by;
	String update_by;
	String creation_timestamp;
	String updatation_timestamp;
	public String getId() {
		return id;
	}
	public String getCaption() {
		return caption;
	}
	public String getAbst() {
		return abst;
	}
	public String getAffair() {
		return affair;
	}
	public String getcreatedBy() {
		return created_by;
	}
	public String getupdateBy() {
		return update_by;
	}
	public String getcreationTimestamp() {
		return creation_timestamp;
	}
	public String getupdatationTimestamp() {
		return updatation_timestamp;
	}
	
	
	public void setId(String id) {
		this.id=id;
	}
	public void setCaption(String caption) {
		this.caption=caption;
	}
	public void setAbst(String abst) {
		this.abst=abst;
	}
	public void setAffair(String affair) {
		this.affair=affair;
	}
	public void setcreatedBy(String cby) {
		this.created_by=cby;
	}
	public void setupdateBy(String upy) {
		this.update_by=upy;
	}
	public void setcreationTimestamp(String ctmp) {
		this.creation_timestamp=ctmp;
	}
	public void setupdatationTimestamp(String uptmp) {
		this.updatation_timestamp=uptmp;
	}
}
