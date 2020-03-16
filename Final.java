final class Teacher{
public void abc()
{
System.out.print("Hello");
}
}
class Student extends Teacher{
public void abc()
{
System.out.print("Hi");
}
}
class Final{
public static void main(String a[]){
Student s=new Student();
s.abc();
}
}
