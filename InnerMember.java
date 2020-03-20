package demo;
class A{
	public void display() {
System.out.println("hi");
	}
	class B{
		public void show() {
			System.out.println("hello");
		}
	}
}
public class InnerMember {

	public static void main(String[] args) {
		A o=new A();
		A.B o1=o.new B();
		o.display();
		o1.show();

	}

}
