import java.time.LocalTime;
import java.time.ZoneId;

public class Time {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
LocalTime l=LocalTime.now(ZoneId.of("US/Pacific"));
System.out.println(l);
LocalTime l1=LocalTime.of(10,12,13,9);
System.out.println(l1);
for(String s:ZoneId.getAvailableZoneIds()) {
	System.out.println(s);
}

	}

}
