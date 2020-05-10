package org.javabrains.in;

public class Abstract {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Sangi s=new Sangi();
s.call();
s.msg();
s.song();
s.video();
	}

}
  abstract class Rani{
	  public void call() {
		  System.out.println("iam calling");
	  }
	  
	  public abstract void msg();
	  public abstract void video();
	  public abstract void song();
	  
  }
  abstract class Pooja extends Rani{
	  public void msg() {
		  System.out.println("iam messaging");
	  }
  }
  class Sangi extends Pooja{
	  public void video() {
		  System.out.println("iam getting video");
	  }
	  public void song() {
		  System.out.println("iam getting music");
	  }
  }