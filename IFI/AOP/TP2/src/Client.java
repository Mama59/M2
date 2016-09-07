import java.util.ArrayList;
import java.util.List;



public class Client {
	String name;
	String address;
	List<Order> orders;
	
	public Client(String name, String address) {
		this.name = name;
		this.address = address;
		this.orders = new ArrayList<Order>();
	}
	
	public void addOrder(Order order) {
		orders.add(order);
	}
	
	public boolean hasOrder() {
		System.out.println(orders.size());
		for(int i = 0; i < orders.size(); i++) {
			System.out.println(orders.get(i));
			if(orders.get(i).client.equals(this)) {
				return true;
			}
		}
		return false;
	}
	
	public void delOrder(Order order) {
		orders.remove(order);
	}

	@Override
	public String toString() {
		return "Client [name=" + name + ", address=" + address + "]";
	}
	
	
}
