package QRGenerator;

import java.util.Set;
import java.util.TreeSet;

public class SetInterface {
	public static void main(String[] args) throws Exception {
		Set<Integer> values=new TreeSet<>();
		values.add(10);
		values.add(20);
		values.add(1);
		values.add(20);
		//values.add(2,22);
		values.forEach(System.out::println);
	}

}
