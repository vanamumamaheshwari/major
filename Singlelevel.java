import java.io.*;
import java.util.*;
class Square{
public Square()
{
System.out.println("square");
}
public Square(int i)
{
System.out.println("square1");
}
}
class Cube extends Square{
public Cube()
{
System.out.println("cube");
}
public Cube(int j)
{
System.out.println("cube1");
}
}
class Singlelevel{
public static void main(String a[])
{
Square obj=new Cube();
Cube obj1=new Cube(5);
}
}