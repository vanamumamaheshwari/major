package QRGenerator;
class Counter{
	int c=0;
	public synchronized void count() {
		c++;
	}
}

public class Synchronized {

	public static void main(String[] args) {
		Counter obj=new Counter();
		Thread t1=new Thread(new Runnable()
		{
			public void run() {
				for(int i=0;i<1000;i++) {
					obj.count();
				}
			}
		});
		Thread t2=new Thread(new Runnable()
		{
			public void run() {
				for(int i=0;i<1000;i++) {
					obj.count();
				}
			}
		});
		t1.run();
		t2.run();
		System.out.println(obj.c);
	}

}
