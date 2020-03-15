import java.io.*;
import java.util.*;
class Palindrome{
public static void main(String a[])
{
int n,rev=0,rem=0;
Scanner sc=new Scanner(System.in);
n=sc.nextInt();
int t=n;
while(n!=0)
{
rem=n%10;
rev=rev*10+rem;
n=n/10;
}
if(rev==t)
System.out.print("palindrome number");
else
System.out.print("Not palindrome number");
}
}

