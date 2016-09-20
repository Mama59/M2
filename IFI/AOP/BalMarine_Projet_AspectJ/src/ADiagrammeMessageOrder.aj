
public aspect ADiagrammeMessageOrder extends ADiagrammeMessageAbstract{
	pointcut diagrammeMessagePointcut() : call(* Order.*(..));
}
