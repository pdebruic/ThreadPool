system startup
startUp
	"self startUp"
	self shutDown.
	MinPoolSize timesRepeat: [ self startWorker ].
	PoolManager := [ [ self adjustThreadPoolSize ] repeat ] 
		forkAt: Processor systemBackgroundPriority
		named: 'pool manager'