
public aspect ADiagrammeMessageClients extends ADiagrammeMessageAbstract{
	pointcut diagrammeMessagePointcut() : call(* Clients.*(..));
}
