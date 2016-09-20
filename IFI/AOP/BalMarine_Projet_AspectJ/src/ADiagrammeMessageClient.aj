
public aspect ADiagrammeMessageClient extends ADiagrammeMessageAbstract {
	pointcut diagrammeMessagePointcut() : call(* Client.*(..));
}
