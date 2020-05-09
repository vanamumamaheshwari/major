package org.javabrains.in;

public class Super {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		B b=new B(5);

	}

}
class A{
	public A() {
		System.out.println("in const a");
	}
	public A(int i) {
		System.out.println("in const a super");
		
	}
}
class B extends A{
	public B() {
		System.out.println("in const b");
	}
	public B(int i) {
		super(i);
		System.out.println("in const b super");
		
	}
}
