class Armstrong{
public static void main(String a[])
{
int n=153,t,s=0,k,rem=0;
t=n;
while(n!=0)
{
rem=n%10;
k=rem*rem*rem;
s=s+k;
n=n/10;
}
if(t==s)
System.out.print("Armstrong Number");
else
System.out.print("Not Armstrong number");
}
}

