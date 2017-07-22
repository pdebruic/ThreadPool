system startup
startPoolManager
	PoolManager := [ [ self adjustPoolSize ] repeat ] newProcess.
	PoolManager
		priority: Processor systemBackgroundPriority;
		name: 'pool';
		resume