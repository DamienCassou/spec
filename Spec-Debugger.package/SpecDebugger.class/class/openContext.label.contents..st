opening
openContext: aContext label: aString contents: contentsStringOrNil
	"Open a notifier in response to an error, halt, or notify. A notifier view just shows a short view of the sender stack and provides a menu that lets the user open a full debugger."
	
	<primitive: 19> "Simulation guard"
	ErrorRecursion not & self logDebuggerStackToFile ifTrue:
		[Smalltalk logError: aString inContext: aContext].
	  ErrorRecursion ifTrue:[
               ErrorRecursion := false.
               self primitiveError: aString].
	ErrorRecursion := true.
	
	self informExistingDebugger: aContext label: aString.
	(self context: aContext)
		openNotifierContents: contentsStringOrNil
		label: aString.
	ErrorRecursion := false. 
	Processor activeProcess suspend.
