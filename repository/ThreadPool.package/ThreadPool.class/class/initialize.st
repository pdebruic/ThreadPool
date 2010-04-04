class initialization
initialize
	"self initialize"
	WorkQueue := SharedQueue2 new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 5.
	MaxPoolSize := 10.
	Smalltalk addToStartUpList: self