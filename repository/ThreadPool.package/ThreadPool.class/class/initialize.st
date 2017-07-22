class initialization
initialize
	"self initialize"
	ManageDelay := self defaultPollDelay.
	WorkQueue := SharedQueue new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 0.
	MaxPoolSize := 15.
	SmalltalkImage current addToStartUpList: self