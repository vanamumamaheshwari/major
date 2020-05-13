package org.javabrains.in;

import java.util.Scanner;

public class Error {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int i,j,k=0;
		//int a[]=new int[4];
		//BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		Scanner sc=new Scanner(System.in);
		i=8;
		try {
			j=sc.nextInt();
		k=i/j;
		System.out.println("bye");
		
		}
		catch(ArithmeticException e) {
			System.out.println("cannot divide by zero"+e);
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("maximun no of values");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		System.out.println(k);

	}

}
