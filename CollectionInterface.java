package QRGenerator;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class CollectionInterface {

	public static void main(String[] args) {
		Collection<Integer> values=new ArrayList<Integer>();
		values.add(10);
		values.add(20);
		//values.add("uma");
		//values.remove(10);
		//for(int i:values) {
		Iterator i=values.iterator();
		while(i.hasNext()) {
			System.out.println(i.next());
		}
	}

}
