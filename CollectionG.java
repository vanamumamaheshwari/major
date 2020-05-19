package org.javabrains.in;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class CollectionG {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//int values[]=new int[5];
		//Object values1[]=new Object[5];
		Collection values=new ArrayList();
		values.add(1);
		values.add("uma");
		values.add(5.8f);

		//Iterator i=values.iterator();
		//while(i.hasNext()) {
		for(Object i:values)
			System.out.println(i);
		}
	}

