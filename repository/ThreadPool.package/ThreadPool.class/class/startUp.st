system startup
startUp
	"self startUp"
	self shutDown.
	MinPoolSize timesRepeat: [ self startWorker ].
	ManageDelay := self defaultPollDelay. 
	PoolManager := [ [ self adjustPoolSize ] repeat ] newProcess.
	PoolManager
		priority: Processor systemBackgroundPriority;
		name: 'pool';
		resume