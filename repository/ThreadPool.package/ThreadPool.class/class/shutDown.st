system startup
shutDown
	"self shutDown"
	WorkQueue := SharedQueue new.
	PoolManager ifNotNil: [ PoolManager isTerminating ifFalse:[PoolManager terminate ]].
	QueueWorkers do: [ :each |  each isTerminating ifFalse:[each  terminate ] ].
	QueueWorkers removeAll.