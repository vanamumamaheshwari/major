package org.javabrains.in;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class DemoName {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
ArrayList<String> persons=new ArrayList<>();
persons.add("uma");
persons.add("chenna");
persons.add("pooja");
persons.add("rajesh");
persons.add("uma");
persons.add("chenna");
Set<String> s=new HashSet<>();
for(String name:persons ) {
	if(s.add(name)==false) {
	System.out.println(name);
}

	}

}
}
