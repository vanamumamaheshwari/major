package org.javabrains.in;

public class DeepC {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Rishu p=new Rishu();
		p.i=1;
p.j=2;
Rishu p1=new Rishu();
p1.i=p.i;
p1.j=p.j;
p.j=3;
System.out.println(p);
System.out.println(p1);
}

}

class Rishu{
int i,j;

@Override
public String toString() {
	return "PQR [i=" + i + ", j=" + j + "]";
}

	}

