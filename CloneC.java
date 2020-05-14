package org.javabrains.in;

public class CloneC {

	public static void main(String[] args) throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		Harshi h=new Harshi();
		h.i=1;
		h.j=2;
		Harshi h1= (Harshi) h.clone();
		h.i=3;
		System.out.println(h);
		System.out.println(h1);

	}

}
class Harshi implements Cloneable{
	int i,j;

	@Override
	public String toString() {
		return "Harshi [i=" + i + ", j=" + j + "]";
	}
	@Override
	public Object clone() throws CloneNotSupportedException{
		return super.clone();
	}
	
}
