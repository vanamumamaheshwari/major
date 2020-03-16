import java.io.*;
import java.util.*;
class Square{
public void abc()
{
System.out.println("square");
}
}
class Cube extends Square{
public void abc()
{
super.abc();
System.out.println("cube");
}
}
class SuperMethod{
public static void main(String a[])
{
Cube obj=new Cube();
obj.abc();
}
}