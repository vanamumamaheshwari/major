import java.io.*;
import java.util.*;
class Perfect{
public static void main(String a[])
{
int n,s=0;
Scanner sc=new Scanner(System.in);
n=sc.nextInt();
for(int i=1;i<n;i++)
{
if(n%i==0)
s=s+i;
}
if(n==s)
{
System.out.print("perfect no");
}
else
System.out.print("Not perfect no");
}
}