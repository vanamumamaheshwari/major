package org.javabrains.in;

public class Student {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Demo d=new Demo(1,"uma");
System.out.println(d.toString());
	}

}
class Demo extends Object{
	int rollno;
	String sname;
	public Demo(int rollno,String sname) {
		this.rollno=rollno;
		this.sname=sname;
	}
	public String toString() {
		return rollno+":"+sname;
		
	}
}