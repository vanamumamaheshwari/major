package mypackage;

import java.lang.module.Configuration;

import javax.crypto.SecretKeyFactory;

public class HibernateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Hibernate h=new Hibernate();
		h.setUserId(1);
		h.setUserName("uma");
		SessionFactory sessionFactory=new Configuration.configure.buildSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(h);
		session.getTransaction.commit();
		

	}

}
