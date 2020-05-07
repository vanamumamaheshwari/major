package mypackage;

import java.lang.module.Configuration;

import javax.crypto.SecretKeyFactory;

public class HibernateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Hibernate h=new Hibernate();
		//h.setUserId(3);
		h.setUserName("third user");
	Hibernate h1=new Hibernate();
	h1.setUserName("fourth user");
	Address add=new Address();
	add.setStreet("street name");
	add.setCity("city name");
	add.setState("state name");
	h.setAddress(add);
		SessionFactory sessionFactory=new Configuration.configure.buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(h);
		session.getTransaction.commit();
		session.close();
		h=null;
		session=sessionFactory.opensession();
		session.beginTransaction();
		h= (UserDetails) session.get(UserDetails.class,1);
		System.out.println(" user name 3 retrived"+h.getUserName());

	}

}
