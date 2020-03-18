class Deep{
int i;
int j;
public String toString(){
return i+","+j;
}
public static void main(String a[])
{
Deep obj=new Deep();
obj.i=5;
obj.j=6;
Deep obj1=new Deep();
obj1.i=obj.i;
obj1.j=obj.j;
obj1.i=10;
System.out.println(obj1);
System.out.println(obj);
}
}