import java.util.ArrayList;

public aspect AClientOrder {
	public Client Order.client;
	public void Order.setClient(Client client) {
		this.client = client;
	}

	public ArrayList<Order> Client.orders = new ArrayList<Order>();

	pointcut setClient() : call(void Order.setClient(Client));

	before(): setClient() {
		Client client = (Client) thisJoinPoint.getArgs()[0];
		client.orders.add((Order) thisJoinPoint.getTarget());
	}

	pointcut delClient() : call(void Clients.delClient(Client));

	void around(): delClient() {
		Client client = (Client) thisJoinPoint.getArgs()[0];
		if(! client.hasOrder()) {
			proceed();
		}
		else {
			System.out.println("Can not delete the client, he already have some orders");
		}
	}

	public boolean Client.hasOrder() {
		for(int i = 0; i < orders.size(); i++) {
			if(orders.get(i).client.equals(this)) {
				return true;
			}
		}
		return false;
	}	
}
