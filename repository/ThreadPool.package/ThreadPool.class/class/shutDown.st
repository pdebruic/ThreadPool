system startup
shutDown
	"self shutDown"
	WorkQueue := SharedQueue2 new.
	PoolManager ifNotNil: [ PoolManager terminate ].
	QueueWorkers do: [ :each | each terminate ].
	QueueWorkers removeAll.