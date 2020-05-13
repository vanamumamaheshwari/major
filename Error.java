package org.javabrains.in;

public class Error {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int i,j,k=0;
		i=8;
		j=0;
		try {
		k=i/j;
		}
		catch(Exception e) {
			System.out.println(e);
		}
		System.out.println(k);

	}

}
