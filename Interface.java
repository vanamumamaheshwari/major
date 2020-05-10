package org.javabrains.in;

public class Interface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Abc r=new R();
r.show();
//r.display();
S s=new R();
s.print();
	}

}
interface Abc{
	public void show();
}
interface S{
	public void print();
}
class R implements Abc,S{
	public void show() {
		System.out.println("show");
	}
	public void display() {
		System.out.println("display");
	}
	public void print() {
		System.out.println("print");
	}
}