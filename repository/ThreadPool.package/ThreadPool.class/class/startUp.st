system startup
startUp
	"self startUp"
	self shutDown.
	MinPoolSize timesRepeat: [ self startWorker ].
	PoolManager ifNotNil: [ PoolManager terminate ].
	PoolManager := [ [ self adjustThreadPoolSize ] repeat ] 
		forkAt: Processor systemBackgroundPriority
		named: 'pool manager'