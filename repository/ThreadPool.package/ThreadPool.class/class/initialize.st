class initialization
initialize
	"self initialize"

	WorkQueue := (Smalltalk at: #SharedQueue2 ifAbsent: [SharedQueue]) new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 5.
	MaxPoolSize := 15.
	Smalltalk addToStartUpList: self