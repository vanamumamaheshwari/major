package QRGenerator;
class A{
	
}
public class SuperClass {

	public static void main(String a[]) throws Exception {
		Class c=Class.forName("QRGenerator.A");
	System.out.print(c.getSuperclass());
	}
}

