package mypackage;

import java.lang.module.Configuration;

import javax.crypto.SecretKeyFactory;

public class HibernateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Hibernate h=new Hibernate();
		h.setUserId(3);
		h.setUserName("third user");
		h.setjoinedDate(10-12-1998);
		h.setAddress("balanagar");
		
		SessionFactory sessionFactory=new Configuration.configure.buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(h);
		session.getTransaction.commit();
		

	}

}
