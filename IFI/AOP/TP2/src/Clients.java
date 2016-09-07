import java.util.ArrayList;
import java.util.List;

public class Clients {
	List<Client> clients;
	
	public Clients() {
		clients = new ArrayList<Client>();
	}
	public void addClient(Client c) {
		clients.add(c);
	}
	public void delClient(Client c) {
		if(! c.hasOrder()) {
			clients.remove(c);
		}
		else {
			System.out.println("Can't remove client " + c + ", he have order");
		}
	}
}

