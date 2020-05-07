package mypackage;

import java.beans.Transient;
import java.util.Date;

//@Entity(name="User Details")
@Table(name="User_Details")
public class UserDetails {
	 	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	 //	@Column(name="User_Id")
	 	private int UserId;
	 	//@Column(name="User_Name")
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

