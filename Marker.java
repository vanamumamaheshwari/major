interface Ramesh{
}
class Ravi implements Ramesh{
public void display(){
System.out.println("hi");
}
}
class Marker{
public static void main(String a[])
{
Ravi r=new Ravi();
if(r instanceof Ramesh)
r.display();
else
System.out.println("no");
}
}