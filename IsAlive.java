package QRGenerator;
public class IsAlive {
	public static void main(String a[]) throws Exception {
		Thread t1=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hi");
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			});
		Thread t2=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hello");
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			});
		t1.start();
		try {Thread.sleep(10);}catch(Exception e) {}
		t2.start();
		//System.out.println(t2.isAlive());
		t1.join();
		System.out.println(t1.isAlive());
		t2.join();
		//System.out.println(t2.isAlive());
		System.out.println("bye");
	}

}


