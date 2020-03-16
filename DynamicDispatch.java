class Priya{
void show()
{
System.out.println("priya");
}
}
class Pooja extends Priya{
void show()
{
System.out.println("pooja");
}
}
class DynamicDispatch{
public static void main(String a[])
{
Pooja o=new Pooja();
Priya o1=new Priya();
Priya p;
p=o1; 
p.show();
}
}