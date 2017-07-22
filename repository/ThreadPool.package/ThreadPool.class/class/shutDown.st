system startup
shutDown
	"self shutDown"

	WorkQueue := SharedQueue new.
	self stopPoolManager.
	QueueWorkers
		do: [ :each | 
			each isTerminating
				ifFalse: [ each terminate ] ].
	QueueWorkers removeAll