interface Ramesh{
void display();
}
class Interface2{
public static void main(String a[])
{
Ramesh r=()->System.out.println("hi");
r.display();
}
}