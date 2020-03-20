package demo;
public class EnumSwitch {
	enum Fruits{
		apple,mango,guava,orange;
	}
		public static void main(String[] args) {
			Fruits f=Fruits.apple;
			switch(f) {
			case apple:
				System.out.println("red");
				break;
			case mango:
				System.out.println("yellow");
				break;
			case guava:
				System.out.println("green");
			

		}

	}

}
