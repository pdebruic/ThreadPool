actions
killWorker
	"just queue a task that kill the activeProcess, which will be the
	worker that picks it up"
	[self isPoolTooBig
		ifTrue: [(QueueWorkers remove: Processor activeProcess) terminate]]
		queueWorkAndExpireIn: 10 minutes