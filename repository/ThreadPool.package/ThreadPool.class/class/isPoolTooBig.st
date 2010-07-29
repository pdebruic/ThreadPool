testing
isPoolTooBig
	^ QueueWorkers size > MinPoolSize 
		and: [ WorkQueue size < QueueWorkers size ]