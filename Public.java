class A{
public void print()
{
System.out.println("hello");
}
public void show()
{
int i=8;
System.out.println(i);
}
}
class Public{
public static void main(String a[])
{
A obj=new A();
obj.print();
obj.show();
}
}