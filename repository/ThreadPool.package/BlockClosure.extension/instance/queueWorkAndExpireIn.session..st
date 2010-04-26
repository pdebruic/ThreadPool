*ThreadPool
queueWorkAndExpireIn: aDuration session: aSession 
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: DateAndTime now + aDuration
		session: aSession