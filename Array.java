import java.util.*;
import java.io.*;
class Array{
public static void main(String ar[])
{
int n;
Scanner sc=new Scanner(System.in);
n=sc.nextInt();
int a[]=new int[n];
for(int i=0;i<n;i++)
{
a[i]=sc.nextInt();
System.out.println(a[i]);
}
}
}
