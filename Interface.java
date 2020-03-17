interface Ramesh{
void display();
}
class Ravi implements Ramesh{
public void display()
{
System.out.println("hi");
}
public void show()
{
System.out.println("hello");
}
}
class Interface{
public static void main(String a[])
{
Ramesh r=new Ravi();
r.display();
//r.show();
}
}

