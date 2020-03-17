class UnException{
public static void main(String a[])
{
int i=2,j=0,k=0;
try{
k=i/j;
}
catch(Exception e)
{
System.out.println("cannot divide by zero");
}
System.out.println(k);
}
}