
public aspect TraceAspectGeringer {
	


		
		pointcut classToTrace(): within (*App);
		
		 
		   pointcut constructorToTrace(): classToTrace() && execution(new(..));

		   pointcut methodToTrace():  classToTrace() &&  execution(* *(..));


		   
		   

		   before(): methodToTrace() {
			      String info = thisJoinPointStaticPart.getSignature() + ", " //
			            + thisJoinPointStaticPart.getSourceLocation().getLine();
			      System.out.println("[BGN]" + info);
			   }
		   after(): methodToTrace() {
			      System.out.println("[END]" + thisJoinPointStaticPart.getSourceLocation().getFileName());
			   }

		
	}



