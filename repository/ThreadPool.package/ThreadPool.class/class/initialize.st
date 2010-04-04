class initialization
initialize
	"self initialize"
	WorkQueue := SharedQueue2 new.
	QueueWorkers := OrderedCollection new.
	Smalltalk addToStartUpList: self