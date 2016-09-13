

public class main {
	public static void main(String[] args) {		
	
		Clients clients = new Clients();
		Orders orders = new Orders();

		Client c1 = new Client("Tom","roubaix");
		clients.addClient(c1);

		Client c2 = new Client("Clem","roubaix");
		clients.addClient(c2);

		Client c3 = new Client("Quentin","roubaix");
		clients.addClient(c3);

		Order order1 = new Order(1, 150);
		orders.addOrder(order1);
		order1.setClient(c1);

		Order order2 = new Order(2, 170);
		orders.addOrder(order1);
		order2.setClient(c1);

		Order order3 = new Order(3, 190);
		orders.addOrder(order2);
		order3.setClient(c2);
		
		Order order4 = new Order(4, 200);
		orders.addOrder(order3);
		order4.setClient(c3);
		
		Order order5 = new Order(5, 120);
		orders.addOrder(order4);
		order5.setClient(c3);
		
		System.out.println(clients);
		
		clients.delClient(c3);
		System.out.println(clients);
		clients.delClient(c2);
		System.out.println(clients);
		clients.delClient(c1);
	}
}
