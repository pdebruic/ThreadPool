running
testWorkFinishes
	200 timesRepeat: [  jobs add: ([ 'it finished' ] queueWork) ].
	(Delay forMilliseconds: 600) wait.
	self assert: (jobs allSatisfy: [ :e | e value = 'it finished' ])