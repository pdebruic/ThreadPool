system startup
startUp
	"self startUp"
	self shutDown.
	self workThreads timesRepeat: 
		[ QueueWorkers add: ([ [ self processQueueElement ] repeat ] 
				forkAt: Processor systemBackgroundPriority
				named: 'threadpool') ]