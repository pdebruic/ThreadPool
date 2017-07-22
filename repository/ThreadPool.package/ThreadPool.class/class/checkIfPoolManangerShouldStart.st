system startup
checkIfPoolManangerShouldStart
	(PoolManager isNil or: [ PoolManager isTerminating ])
		ifTrue: [ self startPoolManager ]