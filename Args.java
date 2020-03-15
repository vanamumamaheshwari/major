class Args{
void show(int ... a)
{
for(int i :a)
{
System.out.println(i);
}
}
public static void main(String ar[])
{
Args o=new Args();
o.show(10,20,30);
}
}
