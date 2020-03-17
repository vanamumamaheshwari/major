interface Ramesh{
void display();
}
interface Ravi {
void show();
}
interface Rajesh extends Ramesh,Ravi{
void print();
}
class Interface3{
public static void main(String a[])
{
Rajesh r=new Rajesh(){
public void display(){
System.out.println("hi");}
public void show(){
System.out.println("hello");}
public void print(){
System.out.println("bye");}
};
r.display();
r.show();
r.print();
}
}