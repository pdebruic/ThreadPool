actions
queueWorkItem: aBlock expiresAt: aTimestamp session: aSession
	| worker |
	self environment
		at: #WADynamicVariable
		ifAbsent: [ self
				error: 'Seaside is not installed, use the queue method without a session parameter.' ].
	worker := ThreadWorker
		on: [ (self environment at: #WADynamicVariable) use: aSession during: aBlock ]
		expires: aTimestamp.
	WorkQueue nextPut: worker.
	self checkIfPoolManangerShouldStart.
	^ worker