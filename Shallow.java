class Shallow{
int i;
int j;
public String toString(){
return i+","+j;
}
public static void main(String a[])
{
Shallow obj=new Shallow();
obj.i=5;
obj.j=6;
Shallow obj1=obj;
obj1.i=10;
System.out.println(obj1);
System.out.println(obj);
}
}