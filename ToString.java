class Student{
int rno;
String name;
Student(int rno,String name)
{
this.rno=rno;
this.name=name;
}
public String toString(){
return "rollno :"+rno+"sname :"+name;
}
}
class ToString{
public static void main(String a[])
{
Student s=new Student(1,"uma");
System.out.println(s);
}
}