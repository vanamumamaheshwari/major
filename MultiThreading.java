package QRGenerator;
class Hi extends Thread{
	public void run() {
	for(int i=0;i<5;i++)
	{
		System.out.println("Hi");
		try {Thread.sleep(1000);}catch(Exception e) {}
	}
	}
}
	class Hello extends Thread{
		public void run() {
		for(int i=0;i<5;i++)
		{
			System.out.println("Hello");
			try {Thread.sleep(1000);}catch(Exception e) {}
		}
		}
}

public class MultiThreading {
	public static void main(String a[]) {
		Hi o=new Hi();
		Hello o1=new Hello();
		o.start();
		try {Thread.sleep(10);}catch(Exception e) {}
		o1.start();
	}

}