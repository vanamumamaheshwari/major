package QRGenerator;
class Student implements Runnable{
	public void run() {
	for(int i=0;i<5;i++)
	{
		System.out.println("Hi");
		try {Thread.sleep(1000);}catch(Exception e) {}
	}
	}
}
	class Teacher implements Runnable{
		public void run() {
		for(int i=0;i<5;i++)
		{
			System.out.println("Hello");
			try {Thread.sleep(1000);}catch(Exception e) {}
		}
		}
}

public class RunnableInterface {
	public static void main(String a[]) {
		Hi o=new Hi();
		Hello o1=new Hello();
		Thread t1=new Thread(o);
		Thread t2=new Thread(o1);
		t1.start();
		try {Thread.sleep(10);}catch(Exception e) {}
		t2.start();
	}

}

