running
testSeaside30
	self class environment
		at: #WACurrentRequestContext
		ifPresent: [ :class | 
			| context passed |
			passed := false.
			context := (self class environment at: #WARequestContext)
				request: (self class environment at: #WARequest) new
				response: (self class environment at: #WAResponse) new.
			[ passed := (self class environment at: #WACurrentRequestContext) value = context ]
				queueWorkAndExpireIn: 1 seconds
				context: context.
			(Delay forMilliseconds: 50) wait.
			self assert: passed ]