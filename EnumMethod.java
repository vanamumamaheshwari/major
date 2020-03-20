package demo;
public class EnumMethod {
	enum Fruits{
		apple(10),mango(5),guava(2),orange;
		int price;
		Fruits(){
			price=10;
		}
		Fruits(int p){
			p=price;
		}
		
		public int getPrice() {
			return price;
	}
	}
		public static void main(String[] args) {
			Fruits[] f=Fruits.values();
			for(Fruits fruit:f) {
				System.out.println(fruit);
			}

		}

	}

