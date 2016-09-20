
public aspect ASingletonOrders extends ASingletonAbstract {

	pointcut singletonPointcut() : call(Orders.new(..));

}