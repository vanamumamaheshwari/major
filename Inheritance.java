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
class Inheritance{
public static void main(String a[])
{
Cube obj=new Cube();
obj.print();
obj.display();
}
}