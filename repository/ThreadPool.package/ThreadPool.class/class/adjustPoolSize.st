actions
adjustPoolSize
	"starting up processes too fast is dangerous and wasteful, ensure a reasonable delay"

	ManageDelay wait.
	WorkQueue size = 0
		ifTrue: [ self stopPoolManager ]
		ifFalse: [ self isPoolTooSmall
				ifTrue: [ self startWorker ]
				ifFalse: [ self isPoolTooBig
						ifTrue: [ self killWorker ] ] ]