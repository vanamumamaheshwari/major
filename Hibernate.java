package mypackage;
import javax.Persistence.Entity;
import javax.Persistence.Id;
@Entity
public class Hibernate {
	@Id
	private int UserId;
	private int UserName;
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getUserName() {
		return UserName;
	}
	public void setUserName(int userName) {
		UserName = userName;
	}


}
