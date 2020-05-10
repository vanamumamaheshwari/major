package org.javabrains.in;

public class Abstract1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Iphone i=new Iphone();
		Samsung s=new Samsung();
		show(s);
		show(i);
		}
public static void show(Phone i) {
	i.showconfig();
}
}
abstract class Phone{
	public abstract void showconfig();
}
class Iphone extends Phone{
	public void showconfig() {
		System.out.println("in Iphone");
	}
}
class Samsung extends Phone{
	public void showconfig() {
		System.out.println("in samsung");
	}
}