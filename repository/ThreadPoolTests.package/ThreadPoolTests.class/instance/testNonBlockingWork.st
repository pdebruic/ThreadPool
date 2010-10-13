running
testNonBlockingWork
	20 timesRepeat: [ jobs add: [ 1000 factorial ] queueWork ].
	self deny: (jobs allSatisfy: [ :e | e hasValue ]).
	[ jobs anySatisfy: [ :e | e hasValue not ] ] whileTrue: [ (Delay forMilliseconds: 200) wait ].
	self assert: (jobs allSatisfy: [ :e | e hasValue ])