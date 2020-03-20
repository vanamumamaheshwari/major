package demo;
class Phone {
	public void push() {
		System.out.println("call");
	}
}

public class AnonymousInner {
	public static void main(String a[]) {
		Phone p=new Phone()
		        {
		        	public void push() {
		        		System.out.println("sms");
		        	}
		        	};
		        	p.push();
		
		}
	}

