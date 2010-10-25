*ThreadPool
queueWorkAndExpireIn: aDuration context: aContext 
	^ ThreadPool 
		queueWorkItem: self 
		expiresAt: DateAndTime now + aDuration
		context: aContext