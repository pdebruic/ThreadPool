class initialization
initialize
	"self initialize"
	ManageDelay := self defaultPollDelay.
	WorkQueue := self sharedQueue new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 5.
	MaxPoolSize := 15.
	Smalltalk addToStartUpList: self