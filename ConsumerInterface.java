import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;

public class ConsumerInterface {
	public static void main(String a[]) {
		List<Integer> l=Arrays.asList(1,2,3,4,5);
		Consumer<Integer> c=new Consumer<Integer>() {
			public void accept(Integer i) {
				System.out.println(i);
			}
		};
		l.forEach(c);
	}

}
