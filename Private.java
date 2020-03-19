package QRGenerator;

import java.lang.reflect.Method;

public class Private {
		public static void main(String a[]) throws Exception
		{
		Class c=Class.forName("QRGenerator.Test");
		Test t=(Test)c.newInstance();
		Method m=c.getDeclaredMethod("show",null);
		m.setAccessible(true);
		m.invoke(t,null);
		}
		}
