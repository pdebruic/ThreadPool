class initialization
initialize
	"self initialize"

	WorkQueue := self sharedQueue new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 5.
	MaxPoolSize := 15.
	Smalltalk addToStartUpList: self