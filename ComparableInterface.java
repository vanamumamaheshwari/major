package QRGenerator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ComparableInterface implements Comparable<ComparableInterface> {
	public static void main(String[] args) throws Exception {
		List<Integer> values=new ArrayList<Integer>();
		values.add(101);
		values.add(234);
		values.add(128);
		//values.remove(8);
		values.add(722);
		Collections.sort(values);
		for(int i:values) {
			System.out.println(i);
		}
	}

	private int values;

	@Override
	public int compareTo(ComparableInterface i) {
		return i.values>i.values?1:-1;
	}

}
