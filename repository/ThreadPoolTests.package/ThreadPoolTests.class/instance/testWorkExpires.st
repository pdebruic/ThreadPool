running
testWorkExpires
	200 timesRepeat: [  jobs add: ([ 1000 factorial ] queueWorkAndExpireIn: 200 milliSeconds) ].
	(Delay forMilliseconds: 600) wait.
	self assert: (jobs anySatisfy: [ :e | e value isNil ]).
	self assert: (jobs anySatisfy: [ :e | e value notNil ])