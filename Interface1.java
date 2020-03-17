interface Ramesh{
void display();
}
class Interface1{
public static void main(String a[])
{
Ramesh r=new Ravi(){
public void display()
{
System.out.println("hi");
}
};
r.display();
}
}