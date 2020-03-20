import java.time.LocalDate;
import java.time.Month;

public class Dateclass {

	public static void main(String[] args) {
	LocalDate l=LocalDate.now();
	System.out.println(l);
	LocalDate l1=LocalDate.of(1998,Month.DECEMBER,10);
	System.out.println(l1);

	}

}
