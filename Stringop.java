package org.javabrains.in;

import java.util.Scanner;

public class Stringop {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String s1,s2;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter 2 strings");
		 s1=sc.nextLine();
		 s2=sc.nextLine();
		String s3=s1.concat(s2);
		System.out.println("concat:"+s3);
		s3=s3.toUpperCase();
		int l1=s3.length();
		System.out.println("uppercase:"+s3);
		System.out.println("LENGTH:"+l1);
	}

}
