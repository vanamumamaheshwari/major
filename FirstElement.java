import java.util.Arrays;
import java.util.List;

public class FirstElement {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Integer> l=Arrays.asList(13,20,33,45,56,60);
		System.out.println(l.stream().filter(i->i%5==0).findFirst());
	}
}
