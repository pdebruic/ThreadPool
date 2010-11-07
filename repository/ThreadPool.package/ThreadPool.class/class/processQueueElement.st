actions
processQueueElement
	"Processor yield only activates same or higher priority processes. A short delay is 
	better.  The point of which is to ensure other workers are getting a chance to pick up
	and process jobs"

	[ WorkQueue next evaluate.
	(Delay forMilliseconds: 1) wait ] 
	on: Error do: [  ]