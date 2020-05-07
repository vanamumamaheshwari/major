package mypackage;
import javax.Persistence.Entity;
import javax.Persistence.Id;
 @Entity(name="User Details")
public class Hibernate {
	@Id
	@Column(name="User_Id")
	private int UserId;
	@Column(name="User_Name")
	private String UserName;
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	

}
