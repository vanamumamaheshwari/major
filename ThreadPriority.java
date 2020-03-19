package QRGenerator;

public class ThreadPriority {
	public static void main(String a[]) throws Exception {
		Thread t1=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hi"+Thread.currentThread().getPriority());
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			},"uma");
		Thread t2=new Thread(() ->
		{
			for(int i=0;i<5;i++)
			{
				System.out.println("Hello"+Thread.currentThread().getPriority());
				try {Thread.sleep(1000);}catch(Exception e) {}
			}
			},"pooja");
		t1.setPriority(Thread.MIN_PRIORITY);
		t2.setPriority(Thread.MAX_PRIORITY);
		System.out.println(t1.getName());
		System.out.println(t2.getName());
		System.out.println(t1.getPriority());
		System.out.println(t2.getPriority());
		t1.start();
		try {Thread.sleep(10);}catch(Exception e) {}
		t2.start();
		t1.join();
		System.out.println(t1.isAlive());
		t2.join();
		System.out.println("bye");
	}



}
