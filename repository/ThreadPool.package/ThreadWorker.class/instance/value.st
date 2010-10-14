evaluating
value
	lock isSignaled ifFalse: [ lock wait ].
	"rethrow any error from worker thread on calling thread"
	error ifNotNil: 
		[ error
			privHandlerContext: thisContext;
			signal ].
	^ value