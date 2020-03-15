import java.io.*;
import java.util.*;
class Prime{
public static void main(String a[])
{
int n,c=1;
Scanner sc=new Scanner(System.in);
n=sc.nextInt();
for(int i=2;i<=n/2;i++)
{
if(n%i==0){
c=0;
break;
}
}
if(c==1)
System.out.print("Prime no");
else
System.out.print("Not Prime no");
}
}


