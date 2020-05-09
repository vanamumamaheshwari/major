package org.javabrains.in;

public class Poly2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Method2 m=new Method2();
		m.print();

	}

}
class Method1{
	public void print() {
		System.out.println("in method 1");
		
	}
}
class Method2 extends Method1{
	public void print() {
		System.out.println("in method 2");
	}
}
