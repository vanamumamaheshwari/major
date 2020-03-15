import java.util.*;
import java.io.*;
class ThreeD{
public static void main(String ar[])
{
int x[]=new int[4];
int y[][]=new int[4][4];
int z[][][]=new int[4][4][4];
for(int i=0;i<4;i++)
{
for(int j=0;j<4;j++)
{
for(int k=0;k<4;k++)
{
z[i][j][k]=i+j+k;
}
}
}
for(int i[][]:z)
{
for(int j[]:i)
{
for(int k:j)
{
System.out.print(k);
}
System.out.println(" ");
}
}
}
}
