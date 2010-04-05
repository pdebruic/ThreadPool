actions
adjustThreadPoolSize
	| workerSize |
	"starting up threads too fast is dangerous and wasteful, ensure a reasonable delay"
	1 second asDelay wait.
	workerSize := QueueWorkers size.
	(workerSize < MinPoolSize or: [ WorkQueue size > workerSize and: [ workerSize < MaxPoolSize ] ]) 
		ifTrue: [ self startWorker ]
		ifFalse: [ (workerSize > MinPoolSize and: [ WorkQueue size < workerSize ]) 
			ifTrue: [ self killWorker ] ]