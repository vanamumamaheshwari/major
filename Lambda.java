import java.util.Arrays;
import java.util.List;

public class Lambda {
	public static void main(String a[]) {
		List<Integer> l=Arrays.asList(1,2,3,4,5);
		l.forEach(i -> System.out.println(i));
	}

}
