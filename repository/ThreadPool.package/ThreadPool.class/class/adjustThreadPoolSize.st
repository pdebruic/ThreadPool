actions
adjustThreadPoolSize
	| workerSize |
	2 second asDelay wait.
	workerSize := QueueWorkers size.
	WorkQueue size outCr.
	(workerSize < MinPoolSize or: [ WorkQueue size > workerSize and: [ workerSize < MaxPoolSize ] ]) 
		ifTrue: [ self startWorker ]
		ifFalse: 
			[ workerSize > MinPoolSize ifTrue: 
				[ [ (QueueWorkers remove: Processor activeProcess) terminate ] 
					queueWorkAndExpireAt: Date tomorrow ] ]