
public aspect ATrace {
	pointcut traceMethode() : call(void B.print(String));

	void around(): traceMethode() {
		System.out.println("Around");
		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget());
		System.out.println(thisJoinPoint.getSignature());
		Object[] args = thisJoinPoint.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.println("arg[" + i + "] : "+ args[i]);
		}
		proceed();
		System.out.println("Around After proceed");

		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget());
		System.out.println(thisJoinPoint.getSignature());
		args = thisJoinPoint.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.println("arg[" + i + "] : "+ args[i]);
		}	
		System.out.println();

	}

	before() : traceMethode() {
		System.out.println("Before");

		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget());
		System.out.println(thisJoinPoint.getSignature());
		Object[] args = thisJoinPoint.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.println("arg[" + i + "] : "+ args[i]);
		}
		System.out.println();		

	}
	after(): traceMethode() {
		System.out.println("After");

		System.out.println(thisJoinPoint.getThis());
		System.out.println(thisJoinPoint.getTarget());
		System.out.println(thisJoinPoint.getSignature());
		Object[] args = thisJoinPoint.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.println("arg[" + i + "] : "+ args[i]);
		}
		System.out.println();
	}
}
