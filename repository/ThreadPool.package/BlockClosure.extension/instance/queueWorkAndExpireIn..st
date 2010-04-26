*ThreadPool
queueWorkAndExpireIn: aDuration
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: DateAndTime now + aDuration