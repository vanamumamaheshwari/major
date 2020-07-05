package org.hibernate.iobrains;
import java.util.Date;

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
     /* user.setAddress("poja address");
      user.setJoinedDate(new Date());
      user.setDescription("1st user");*/
     // UserDetails user1=new UserDetails();
     // user1.setUsername("uma");
    /*  user1.setAddress("uma address");
      user1.setJoinedDate(new Date());
      user1.setDescription("2st user");*/
      Address ad=new Address();
      ad.setStreet("street name");
      ad.setCity("city name");
      user.setHomeAddress(ad);
      Address ad1=new Address();
      ad1.setStreet("street name");
      ad1.setCity("city name");
      user.setOfficeAddress(ad1);
      SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory(); 
      Session session=sessionFactory.openSession();
      session.beginTransaction();
      session.save(user);
   //   session.save(user1);
      session.getTransaction().commit();
      session.close();
      
	}

}
