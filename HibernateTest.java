package org.hibernate.iobrains;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.iobrains.Address;
import org.iobrains.UserDetails;

public class HibernateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      UserDetails user=new UserDetails();
      user.setUsername("pooja");
      Address ad=new Address();
     ad.setStreet("1st street");
     ad.setCity("1st city");
     ad.setState("1st state");
     ad.setPincode("500042");
     Address ad1=new Address();
     ad1.setStreet("2nd street");
     ad1.setCity("2nd city");
     ad1.setState("2nd state");
     ad1.setPincode("500041");
     user.getListOfAddresses().add(ad);
     user.getListOfAddresses().add(ad1);
     SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory(); 
     Session session=sessionFactory.openSession();
     session.beginTransaction();
     session.save(user);
     session.getTransaction().commit();
     session.close();
      
	}

}
