class This
{
private int i;
public This(int i)
{
this.i=i;
}
void method()
{
System.out.print(i);
}
public static void main(String a[])
{
This t=new This(6);
t.method();
}
}