package demo;
import java.sql.*;
public class JdbcConnectivity {

	public static void main(String[] args) throws Exception {
		String url="";
		String uname="";
		String pswd="";
		String query="select * from Student";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pswd);
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		rs.next();
		String name=rs.getString("uname");
		System.out.println(name);
		st.close();
		con.close();

	}

}
