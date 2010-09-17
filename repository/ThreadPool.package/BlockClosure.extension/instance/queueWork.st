*ThreadPool
queueWork
	^ ThreadPool 
		queueWorkItem: self
		expiresAt: DateAndTime now + 365 days