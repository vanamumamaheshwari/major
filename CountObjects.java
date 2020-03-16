class CountObjects{
static int i=0;
public CountObjects()
{
i++;
}
public void counter(){
System.out.print(i);
}
public static void main(String a[])
{
CountObjects c=new CountObjects();
CountObjects c1=new CountObjects();
CountObjects c2=new CountObjects();
c.counter();
}
}
