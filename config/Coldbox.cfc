component {
	
	// Configure ColdBox Application
	function configure(){
	
		// coldbox directives
		coldbox = {
			//Application Setup
			appName 				= "DemoApp",
	
			/* **************************************************************************
			 When an error happens in your application that you don't try/catch,
			 this page will be rendered.  It should be a stand-alone HTML or CFM
			 file that does not use the framework in any way.
			 
			 If you comment out the below line, you will get the stock error page again.
			************************************************************************** */
			customErrorTemplate		= "includes/prettyError.cfm",
			
			
			//Development Settings
			debugMode				= false,
			debugPassword			= "",
			reinitPassword			= "",
			handlersIndexAutoReload = true,
	
			//Application Aspects
			handlerCaching 			= false
		};
	
	}

}