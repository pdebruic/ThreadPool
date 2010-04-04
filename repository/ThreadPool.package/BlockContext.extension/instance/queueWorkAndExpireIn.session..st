*ThreadPool
queueWorkAndExpireIn: aDuration session: aSession 
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: TimeStamp now + aDuration
		session: aSession