*ThreadPool
queueWorkAndExpireIn: aDuration
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: TimeStamp now + aDuration