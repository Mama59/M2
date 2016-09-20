
public aspect ADiagrammeMessageOrders extends ADiagrammeMessageAbstract {
	pointcut diagrammeMessagePointcut() : call(* Orders.*(..));
}
