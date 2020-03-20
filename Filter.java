import java.util.Arrays;
import java.util.List;

public class Filter {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> l=Arrays.asList(13,20,33,45,56,60);
		System.out.println(l.stream().filter(i->i%5==0).reduce(0,Integer::sum));
	}
}
