import java.util.*;
import java.io.*;
class TwoEnhanced{
public static void main(String ar[])
{
int x[]={1,2,3,4};
int y[]={2,3,4,5};
int z[]={3,4,5,6};
int a[][]={
{1,2,3,4},
{2,3,4,5},
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
