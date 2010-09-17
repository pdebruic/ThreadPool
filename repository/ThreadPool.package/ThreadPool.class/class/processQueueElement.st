actions
processQueueElement
	[WorkQueue next evaluate.
	Processor yield ]
		on: Error
		do: []