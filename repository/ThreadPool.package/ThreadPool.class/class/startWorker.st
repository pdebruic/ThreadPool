actions
startWorker
	'startWorker' outCr.
	QueueWorkers add: ([ [ self processQueueElement ] repeat ] 
			forkAt: Processor systemBackgroundPriority
			named: 'pool worker')