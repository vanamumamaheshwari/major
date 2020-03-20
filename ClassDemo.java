package demo;

public class ClassDemo {

	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		
     Class.forName("pqr").newInstance();
	}

}
class Pqr{
	static {
		System.out.println("iam uma");
	}
	{
		System.out.println("iam responding");
	}
}
