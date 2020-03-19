package QRGenerator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class Duplicate {
	public static void main(String[] args) throws Exception {
		ArrayList<String> values=new ArrayList<>();
		values.add("uma");
		values.add("pooja");
		values.add("sangi");
		values.add("uma");
		Set<String> s=new HashSet<>();
		for(String v:values)
			if(s.add(v)==false)
		System.out.println(v);
	}

}
