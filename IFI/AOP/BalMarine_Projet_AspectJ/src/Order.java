
public class Order {
	int id;
	double amount;
	
	public Order(int id, double amount) {
		super();
		this.id = id;
		this.amount = amount;
	}
	
	public void printOrder() {
		System.out.println(id + " "  + amount);
	}	
}
