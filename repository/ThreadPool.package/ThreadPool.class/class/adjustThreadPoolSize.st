actions
adjustThreadPoolSize
	| workerSize |
	1 second asDelay wait.
	workerSize := QueueWorkers size.
	workerSize outCr.
	(workerSize < MinPoolSize or: [ WorkQueue size > workerSize and: [ workerSize < MaxPoolSize ] ]) 
		ifTrue: [ self startWorker ]
		ifFalse: [ (workerSize > MinPoolSize and: [ WorkQueue size < workerSize ]) 
			ifTrue: [ self killWorker ] ]