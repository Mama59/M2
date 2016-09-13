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
		clients.remove(c);
	}
	
	@Override
	public String toString() {
		String result = "";
		for(Client client: clients) {
			result += client.toString() + "\n";
		}
		return result;
	}
	
	
}

