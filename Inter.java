package org.javabrains.in;
interface Ammu{
	void show();
}

public class Inter {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ammu a=()->System.out.println("show");
		a.show();

	}

}
