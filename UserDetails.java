package org.iobrains;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Table;
@Entity
@Table(name="USER_DETAILS")
public class UserDetails {
	@Embedded
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userid;
	private String username;
	@ElementCollection
	@JoinTable(name="USER_DETAILS",
	   joinColumns = @JoinColumn(name="USER_ID")
	)
	private Set<Address> listOfAddresses=new HashSet<Address>();
	
	public Set<Address> getListOfAddresses() {
		return listOfAddresses;
	}
	public void setListOfAddresses(Set<Address> listOfAddresses) {
		this.listOfAddresses = listOfAddresses;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

}
