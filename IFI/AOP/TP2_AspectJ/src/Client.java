
public class Client {
	String name;
	String address;
	Orders orders;
	
	public Client(String name, String address) {
		this.name = name;
		this.address = address;
		this.orders = new Orders();
	}
	
//	public boolean hasOrder() {
//		System.out.println(orders.orders.size());
//		for(int i = 0; i < orders.orders.size(); i++) {
//			System.out.println(orders.orders.get(i));
//			if(orders.orders.get(i).client.equals(this)) {
//				return true;
//			}
//		}
//		return false;
//	}

	public String toString() {
		return "Client [name=" + name + ", address=" + address + "]";
	}
	
	
}
