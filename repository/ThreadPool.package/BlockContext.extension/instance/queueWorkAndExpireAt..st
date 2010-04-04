*ThreadPool
queueWorkAndExpireAt: aTimestamp
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: aTimestamp