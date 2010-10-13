running
testSeaside
	self class environment
		at: #WACurrentSession
		ifPresent: [ :class | 
			| session passed |
			passed := false.
			session := (self class environment at: #WASession) new.
			[ passed := true ] queueWorkAndExpireIn: 1 seconds session: session.
			(Delay forMilliseconds: 50) wait.
			self assert: passed ]