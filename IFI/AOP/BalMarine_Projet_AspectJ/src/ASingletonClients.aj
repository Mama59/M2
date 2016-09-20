
public aspect ASingletonClients extends ASingletonAbstract {

	pointcut singletonPointcut() : call(Clients.new(..));

}