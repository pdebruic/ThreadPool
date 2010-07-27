actions
killWorker
	"just queue a task that kill the activeProcess, which will be the worker that picks it up"
	
	[ (QueueWorkers size > MinPoolSize and: [ WorkQueue size < QueueWorkers size ]) 
		ifTrue: [ (QueueWorkers remove: Processor activeProcess) terminate ] ] 
	queueWorkAndExpireIn: 10 minutes.
	"a busy queue might take a while to execute the kill job, give it some time or we will
	end up scheduling too many kills and wiping out the queue works all together.  They would
	start back up so thats not a huge deal, but easily avoided none the less"
	5 second asDelay wait