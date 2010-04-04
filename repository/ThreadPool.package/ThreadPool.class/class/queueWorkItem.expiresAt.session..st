actions
queueWorkItem: aBlock expiresAt: aTimestamp session: aSession 
	| worker |
	worker := ThreadWorker 
		on: 
			[ WACurrentSession 
				use: aSession
				during: aBlock ]
		expires: aTimestamp.
	WorkQueue nextPut: worker.
	^ worker