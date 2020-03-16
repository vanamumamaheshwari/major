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
class OverRiding{
public static void main(String a[])
{
Pooja o=new Pooja();
o.show();
}
}