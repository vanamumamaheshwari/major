import java.util.Arrays;
import java.util.List;

public class SumMethod {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> l=Arrays.asList(1,2,3,4,5,6);
		System.out.println(l.stream().map(i->i*2).reduce(0,Integer::sum));
	}
}
