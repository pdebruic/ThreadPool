system startup
shutDown
	"self shutDown"
	WorkQueue := SharedQueue new.
	PoolManager ifNotNil: [ PoolManager terminate ].
	QueueWorkers do: [ :each | each terminate ].
	QueueWorkers removeAll.