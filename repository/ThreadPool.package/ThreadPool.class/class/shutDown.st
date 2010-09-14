system startup
shutDown
	"self shutDown"
	WorkQueue := self sharedQueue new.
	PoolManager ifNotNil: [ PoolManager terminate ].
	QueueWorkers do: [ :each | each terminate ].
	QueueWorkers removeAll.