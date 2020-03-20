import java.util.Arrays;
import java.util.List;

public class MethodReference {
	public static void main(String a[]) {
		List<Integer> l=Arrays.asList(1,2,3,4,5);
		l.forEach(MethodReference::doubleit);
		}
		public static void doubleit(int i) {
			System.out.println(i*2);
		}
	}

