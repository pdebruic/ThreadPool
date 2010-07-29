testing
isPoolTooSmall
	^ QueueWorkers size < MinPoolSize 
		or: [ WorkQueue size > QueueWorkers size 
			and: [ QueueWorkers size < MaxPoolSize ] ]