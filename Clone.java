class Clone implements Cloneable {
int i;
int j;
public Object clone() throws CloneNotSupportedException
{
return super.clone();
}
public String toString()
{
return i+","+j;
}
public static void main(String a[]) throws CloneNotSupportedException
{
Clone obj=new Clone();
obj.i=5;
obj.j=6;
Clone obj1=(Clone)obj.clone();
System.out.println(obj1);
System.out.println(obj);
}
}