package org.javabrains.in;

public class Labeled {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		uma:
		for(int i=0;i<4;i++) {
			for(int j=0;j<4;j++) {
				if(i==3) {
					break uma;
				}
				System.out.print("*");
			}
			System.out.println(" ");
		}
	System.out.println((int) 'z');

	}

}
