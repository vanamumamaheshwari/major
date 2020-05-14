package org.javabrains.in;

import java.util.Scanner;

public class ShallowC {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	PQR p=new PQR();
			p.i=1;
	p.j=2;
	PQR p1=p;
	p.j=3;
	System.out.println(p);
	System.out.println(p1);
	}

	}

class PQR{
	int i,j;

	@Override
	public String toString() {
		return "PQR [i=" + i + ", j=" + j + "]";
	}
}
