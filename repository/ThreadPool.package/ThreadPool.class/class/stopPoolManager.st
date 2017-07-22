system startup
stopPoolManager
	QueueWorkers size
		timesRepeat: [ [ (QueueWorkers remove: Processor activeProcess) terminate ]
				queueWorkAndExpireIn: 10 minutes ].
	PoolManager
		ifNotNil: [ PoolManager isTerminating
				ifFalse: [ PoolManager terminate ].
			PoolManager := nil ]