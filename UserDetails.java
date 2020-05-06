package mypackage;

import java.util.Date;

//@Entity(name="User Details")
@Table(name="User_Details")
public class UserDetails {
	 	@Id
	 //	@Column(name="User_Id")
	 	private int UserId;
	 	//@Column(name="User_Name")
	 	private String UserName;
	 	public Date getJoinedDate() {
			return joinedDate;
		}
		public void setJoinedDate(Date joinedDate) {
			this.joinedDate = joinedDate;
		}
		public String getAddress() {
			return Address;
		}
		public void setAddress(String address) {
			Address = address;
		}
		private Date joinedDate;
	 	private String Address;
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

