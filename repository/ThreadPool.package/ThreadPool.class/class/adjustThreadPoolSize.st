actions
adjustThreadPoolSize
	"starting up processes too fast is dangerous and wasteful, ensure a reasonable delay"
	ManageDelay wait.
	self isPoolTooSmall 
		ifTrue: [ self startWorker ]
		ifFalse: [ self isPoolTooBig ifTrue: [ self killWorker ] ]