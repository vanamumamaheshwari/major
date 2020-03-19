package QRGenerator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ComparatorInterface {
	public static void main(String[] args) throws Exception {
		List<Integer> values=new ArrayList<Integer>();
		values.add(101);
		values.add(234);
		values.add(128);
		//values.remove(8);
		values.add(722);
		Collections.sort(values,(o1,o2) ->{
			return o1>02?1:-1;
		});
		values.forEach(System.out::println);
	}
}
