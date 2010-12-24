class initialization
initialize
	"self initialize"
	ManageDelay := self defaultPollDelay.
	WorkQueue := SharedQueue new.
	QueueWorkers := OrderedCollection new.
	MinPoolSize := 5.
	MaxPoolSize := 18.
	SmalltalkImage current addToStartUpList: self