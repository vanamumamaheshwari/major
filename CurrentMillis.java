package org.javabrains.in;

import java.util.ArrayList;

public class CurrentMillis {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		long start=System.currentTimeMillis();
		ArrayList a=new ArrayList();
		for(int i=1;i<100000;i++) {
			a.add(i);
		}
		long end=System.currentTimeMillis();
		System.out.println(end-start);

	}

}
