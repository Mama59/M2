
public class Order {
	int id;
	double amout;
	
	public Order(int id, double amout) {
		super();
		this.id = id;
		this.amout = amout;
	}
	
	public void printOrder() {
		System.out.println(toString());
	}
	
	@Override
	public String toString() {
		return "Order [id=" + id + ", amout=" + amout + "]";
	}
	
	
}
