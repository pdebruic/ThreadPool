running
testSeaside28
	self class environment
		at: #WACurrentSession
		ifPresent: [ :class | 
			| session passed |
			passed := false.
			session := (self class environment at: #WASession) new.
			[ passed := (self class environment at: #WACurrentSession) value = session ]
				queueWorkAndExpireIn: 1 seconds
				session: session.
			(Delay forMilliseconds: 50) wait.
			self assert: passed ]