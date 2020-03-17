abstract class Samsung{
public void call()
{
System.out.println("calling");
}
abstract void charge();
abstract void move();
}
abstract class Vivo extends Samsung{
public void charge()
{
System.out.println("self charging");
}
abstract void move();
}
class Oppo extends Vivo{
public void move()
{
System.out.println("self moving");
}
}
class Abstraction{
public static void main(String a[])
{
Oppo o=new Oppo();
o.call();
o.charge();
o.move();
}
}
