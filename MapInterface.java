package QRGenerator;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class MapInterface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Map<String,String> map=new HashMap<>();
		map.put("Name :","Uma");
		map.put("Branch :","CSE");
		map.put("College:","CMR");
		Set<String> keys=map.keySet();
		for(String k:keys)
System.out.println(k+" "+map.get(k));
	}

}
