package org.javabrains.in;

public class MultiThreadLamda {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Thread t1=new Thread(()->
	{
				for(int i=0;i<5;i++) {
				System.out.println("hi");
				try {Thread.sleep(1000);} catch(Exception e) {}
				}
			
		});
		Thread t2=new Thread(()->
		{
			for(int i=0;i<5;i++) {
			System.out.println("hello");
			try {Thread.sleep(1000);} catch(Exception e) {}
			}
		
	});
		t1.start();
		try {Thread.sleep(1000);} catch(Exception e) {}
		t2.start();
		t1.join();
		System.out.println(t2.isAlive());
		t2.join();
		System.out.println(t1.isAlive());
		System.out.println("bye");

	}

}
