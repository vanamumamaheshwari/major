package org.javabrains.in;

public class Super1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
B1 b=new B1();
b.show();
b.abc();
	}

}
class A1{
	int i=5;
	public void abc() {
		System.out.println("a1");
	}
	
}
class B1 extends A1{
	int i=6;
	public void show() {
		System.out.println(super.i);
	}
	public void abc() {
		super.abc();
		System.out.println("b1");
	}
}
