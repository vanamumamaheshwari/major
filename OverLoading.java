class OverLoading{
void show()
{
System.out.println("priya");
}
void show(int i)
{
System.out.println("pooja");
}
public static void main(String a[])
{
OverLoading o=new OverLoading();
o.show();
o.show(5);
}
}