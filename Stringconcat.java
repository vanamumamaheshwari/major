import java.io.*;
import java.util.*;
class StringConcat{
public static void main(String a[])
{
String s1,s2,s3,s4;
Scanner sc=new Scanner(System.in);
s1=sc.nextLine();
s2=sc.nextLine();
s3=s1.concat(s2);
s4=s1+s2;
System.out.println("Concat of String :"+s3);
System.out.println("Concat of String :"+s4);
}
}

