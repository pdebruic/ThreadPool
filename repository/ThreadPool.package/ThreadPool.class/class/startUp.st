system startup
startUp
	"self startUp"
	self shutDown.
	MinPoolSize timesRepeat: [ self startWorker ].
	ManageDelay := self defaultPollDelay. 
	PoolManager := [ [ self adjustThreadPoolSize ] repeat ] newProcess.
	PoolManager
		priority: Processor systemBackgroundPriority;
		name: 'pool';
		resume