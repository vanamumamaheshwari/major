import java.util.Arrays;
import java.util.List;

public class OrElse {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> l=Arrays.asList(13,22,33,47,56,62);
		System.out.println(l.stream().filter(i->i%5==0).findFirst().orElse(0));
	}
}
