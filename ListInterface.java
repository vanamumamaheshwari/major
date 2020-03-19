package QRGenerator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ListInterface {
	public static void main(String[] args) throws Exception {
	List<Integer> values=new ArrayList<Integer>();
	values.add(10);
	values.add(20);
	values.add(1);
	//values.remove(8);
	values.add(2,22);
	Collections.sort(values);
	values.forEach(System.out::println);
	//for(int i:values) {
		//System.out.println(i);
	//}
}

}
