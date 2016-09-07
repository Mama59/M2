
public class A {
	
	public void test() {
		String msg = "Hello World!";
		B b = new B();
		b.print(msg);
	}
	
	public static void main(String[] args) {
		A a = new A();
		a.test();
	}

	public String toString() {
		return "A [getClass()=" + getClass() + "]";
	}
	
}
