package org.javabrains.in;

public class Keyword {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		M1 m=new M1(6);
		m.show();

	}

}
class M1{
    private int i;
	public M1(int i) {
		this.i=i;
	}
	public void show() {
		System.out.println(i);
	}
}
