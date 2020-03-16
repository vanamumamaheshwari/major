class Encapsulation{
public static void main(String a[])
{
Student s1=new Student();
s1.setSr(3);
System.out.println("rollno :"+s1.getSr());
s1.setSn("uma");
System.out.println("Student name :"+s1.getSn());
}
}
class Student{
private String sname;
private int roll;
public void setSr(int r)
{
roll=r;
}
public void setSn(String s)
{
sname=s;
}
public int getSr()
{
return roll;
}
public String getSn()
{
return sname;
}
}

