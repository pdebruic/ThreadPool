actions
queueWorkItem: aBlock expiresAt: aTimestamp context: aContext
	| worker |
	self environment
		at: #WACurrentRequestContext
		ifAbsent: [ self error: 'Seaside3 is not installed, use the queue method without a session parameter.' ].
	worker := ThreadWorker
		on: [ (self environment at: #WACurrentRequestContext) use: aContext during: aBlock ]
		expires: aTimestamp.
	WorkQueue nextPut: worker.
	^ worker