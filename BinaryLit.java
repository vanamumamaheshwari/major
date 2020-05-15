package org.javabrains.in;

public class BinaryLit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int b=0b100_00_00;
		System.out.println(b);
		int i=1;
		i=i++;
		System.out.println(i);
		byte c=1;
		c+=1;
		System.out.println(c);
		for(int j=0;j<3;j++) {
			switch(j) {
			case 0:
					break;
			case 1:
				System.out.println("zero");
			case 2:
				System.out.println("one");
			case 3:
				System.out.println("two");
				}
			}
		System.out.println("done");
		BinaryLit obj=new BinaryLit(5);
	}
		//class Siddu{
			public BinaryLit() {
				System.out.println("parent");
			}
			public BinaryLit(int s) {
				System.out.println("child");
			}

}
