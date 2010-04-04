*ThreadPool
queueWorkAndExpireAt: aTimestamp session: aSession 
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: aTimestamp
		session: aSession