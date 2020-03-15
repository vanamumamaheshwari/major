import java.util.*;
import java.io.*;
class TwoD{
public static void main(String ar[])
{
Scanner sc=new Scanner(System.in);
int a[][]=new int[10][10];
int row=sc.nextInt();
int col=sc.nextInt();
for(int i=0;i<row;i++)
{
for(int j=0;j<col;j++)
{
a[i][j]=sc.nextInt();
System.out.print(a[i][j]);
}
System.out.println(" ");
}
}
}
