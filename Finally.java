import java.io.*;
import java.util.*;
class Finally{
public static void main(String a[])
{
int i=10,j,k;
Scanner sc=new Scanner(System.in);
j=sc.nextInt();
try{
k=i/j;
System.out.println(k);
}
catch(Exception e)
{
System.out.println("cannot divide by zero");
}
finally{
System.out.println("iam free");
}
}
}