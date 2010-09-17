running
testWorkFinishes
	| jobs start |
	jobs := OrderedCollection new.
	start := DateAndTime now.
	200 timesRepeat: [ jobs add: [ Transcript show: Processor activeProcess name ] queueWork ].
	[ jobs anySatisfy: [ :e | e hasValue not ] ] whileTrue: [ 2 seconds asDelay wait ].
	self assert: true.
	Transcript show: DateAndTime now - start.