package QRGenerator;

public class ThreadName {
	public static void main(String a[]) throws Exception {
		Thread t1=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hi");
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			},"uma");
		Thread t2=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hello");
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			},"pooja");
		//t1.setName("uma");
		//t2.setName("pooja");
		System.out.println(t1.getName());
		System.out.println(t2.getName());
		t1.start();
		try {Thread.sleep(10);}catch(Exception e) {}
		t2.start();
		t1.join();
		System.out.println(t1.isAlive());
		t2.join();
		System.out.println("bye");
	}


}
