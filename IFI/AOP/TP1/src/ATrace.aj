
public aspect ATrace {
	pointcut traceMethode() : call(void B.print(String));
	
	void around(): traceMethode() {
		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget().toString());
		System.out.println(thisJoinPoint.getSignature());
		System.out.println(thisJoinPoint.getArgs().toString());
		
	}
	
	before() : traceMethode() {
		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget().toString());
		System.out.println(thisJoinPoint.getSignature());
		System.out.println(thisJoinPoint.getArgs().toString());
		
	}
	after(): traceMethode() {
		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget().toString());
		System.out.println(thisJoinPoint.getSignature());
		System.out.println(thisJoinPoint.getArgs());
		
	}
}
