package org.javabrains.in;

public class Final1 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final int i;
		i=5;
		System.out.println(i);
		Q q=new Q();
		q.show();

	}

}

class P{
	final public void show()
	{
		System.out.println("in p");
	}
}
class Q extends P{
}