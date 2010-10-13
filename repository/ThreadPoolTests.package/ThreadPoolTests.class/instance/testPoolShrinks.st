running
testPoolShrinks
	200 timesRepeat: [ jobs add: [ 1000 factorial ] queueWork ].
	2 timesRepeat: [ ThreadPool startWorker ].
	(Delay forSeconds: 2) wait.
	self assert: ThreadPool isPoolTooBig.
	(Delay forSeconds: 3) wait.
	self deny: ThreadPool isPoolTooBig.
