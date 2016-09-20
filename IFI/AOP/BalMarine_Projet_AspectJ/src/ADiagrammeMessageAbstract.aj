public abstract aspect ADiagrammeMessageAbstract {
	
	abstract pointcut diagrammeMessagePointcut();
	
	Object around(): diagrammeMessagePointcut(){
		
		String message = "\n";
		String callerClass  = "\tMain\t";
		Object caller = thisJoinPoint.getThis();
		Object target = thisJoinPoint.getTarget();
		if(caller != null) {
			System.out.println();
			callerClass = caller.getClass().toString();
		}
		message += callerClass;
		message += "\t\t\t\t";
		message += target.getClass() + "\n";
		message += "\t|\t\t" + thisJoinPoint.getSignature() + "\t|\n";
		message += "\t|---------------------------------------------->|\n";
		Object result = proceed();
		message += "\t|\t\t return: " + result + "\t\t\t|\n";
		message += "\t|<----------------------------------------------|\n";
		message += "";
		System.out.println(message);
		return result;
	}
	
	
}