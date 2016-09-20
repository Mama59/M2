import java.util.ArrayList;
import java.util.List;


public class Orders {
	List<Order> orders;
	
	public Orders() {
		orders = new ArrayList<Order>();
	}
	public void addOrder(Order order) {
		orders.add(order);
		
	}
	public void delOrder(Order order) {
		orders.remove(order);
	}
	
	public int size() {
		return orders.size();
	}
	
	public Order get(int i) {
		return orders.get(i);
	}
	
}
