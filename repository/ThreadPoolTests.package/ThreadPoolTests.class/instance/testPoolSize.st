running
testPoolSize
	200 timesRepeat: [ jobs add: [ 1000 factorial ] queueWork ].
	10 timesRepeat: [ ThreadPool startWorker ].
	(Delay forSeconds: 2) wait.
	self assert: ThreadPool isPoolTooBig.
	self deny: ThreadPool isPoolTooSmall 