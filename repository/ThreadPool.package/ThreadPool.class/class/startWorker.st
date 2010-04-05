actions
startWorker
	QueueWorkers add: ([ [ self processQueueElement ] repeat ] 
			forkAt: Processor systemBackgroundPriority
			named: 'pool worker')