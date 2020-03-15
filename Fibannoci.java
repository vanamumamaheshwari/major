import java.io.*;
import java.util.*;
class Fibannoci{
public static void main(String a[])
{
int t=0,t1=1,t2=1,n;
Scanner sc=new Scanner(System.in);
n=sc.nextInt();
System.out.print(t1+" "+t2);
while(t<=n)
{
t=t1+t2;
if(t>n)
break;
System.out.print(" "+t);
t1=t2;
t2=t;
}
}
}