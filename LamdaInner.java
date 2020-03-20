package demo;
interface Phonec {
	public void push();
}

public class LamdaInner {
	public static void main(String a[]) {
		Phonec p=() -> System.out.println("sms");
		        	p.push();
		
		}
	}

