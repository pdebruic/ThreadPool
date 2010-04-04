actions
killWorker
	"just queue a task that kill the activeProcess, which will be the worker that picks it up"
	| deadWorker |
	'killWorker' outCr.
	deadWorker := 
	[ (QueueWorkers remove: Processor activeProcess) terminate ] 
		queueWorkAndExpireAt: Date tomorrow.
	5 second asDelay wait