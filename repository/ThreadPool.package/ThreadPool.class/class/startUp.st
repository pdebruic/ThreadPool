system startup
startUp
	"self startUp"
	self shutDown.
	MinPoolSize timesRepeat: [ self startWorker ].
	ManageDelay := self defaultPollDelay. 
	self checkIfPoolManangerShouldStart