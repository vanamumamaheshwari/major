import java.util.*;
import java.io.*;
class Jagged{
public static void main(String ar[])
{
int x[]={1};
int y[]={2,3};
int z[]={3,4,5,6};
int a[][]={
{1},
{2,3},
{3,4,5,6}};
for(int i[]:a)
{
for(int j:i)
{
System.out.print(j);
}
System.out.println(" ");
}
}
}
