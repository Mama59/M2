
public class Order {
	int id;
	double amout;
	Client client;
	
	public Order(int id, double amout) {
		super();
		this.id = id;
		this.amout = amout;
	}

	public void setClient(Client client) {
		this.client = client;
		this.client.addOrder(this);
	}
	
	public Client getClient() {
		return client;
	}

	public void printOrder() {
		System.out.println(toString());
	}
	
	@Override
	public String toString() {
		return "Order [id=" + id + ", amout=" + amout + "]";
	}
	
	
}
