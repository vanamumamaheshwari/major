import java.io.*;
import java.util.*;
class Square{
Scanner sc=new Scanner(System.in);
int s=sc.nextInt();
public void print()
{
int r=s*s;
System.out.println("square :"+r);
}
}
class Cube extends Square{
void display()
{
int c=s*s*s;
System.out.println("cube :"+c);
}
}
class Four extends Cube{
void show()
{
int f=s*s*s*s;
System.out.println("Four :"+f);
}
}
class Multilevel{
public static void main(String a[])
{
Four obj=new Four();
obj.print();
obj.display();
obj.show();
}
}