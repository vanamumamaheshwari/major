package org.javabrains.in;
class Y{
	int n;
	boolean value=false;
	public synchronized void put(int n) {
		while(value) {
			try { wait();} catch(Exception e) {}
		}
		System.out.println(n);
		this.n=n;
		value=true;
		notify();
	}
	public synchronized void get() {
		while(!value) {
			try { wait();} catch(Exception e) {}
		}
		
		System.out.println(n);
		value=false;
		notify();
	}
	}
class Producer implements Runnable
{
	Y y;

	public Producer(Y y) {
		this.y = y;
		Thread t=new Thread(this,"Producer");
		t.start();
	}
	public void run() {
		int i=0;
		while(true) {
			y.put(i++);
			try {Thread.sleep(1000);} catch(Exception e) {}
		}
	}
}
class Consumer implements Runnable{
	Y y;

	public Consumer(Y y) {
		this.y = y;
		Thread t=new Thread(this,"Consumer");
		t.start();
	}
	public void run() {
		while(true) {
			y.get();
			try {Thread.sleep(1000);} catch(Exception e) {}
		}
	}
}
public class InterThreadCom {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Y y=new Y();
		new Producer(y);
		new Consumer(y);
		

	}

}
