package org.javabrains.in;
interface U{
	void push();
}
public class Marked implements U{
	public void push() {
		System.out.println("push");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Marked m=new Marked();
if(m instanceof U) {
	m.push();
}
else {
	System.out.println("error");
}
	
	}

}
