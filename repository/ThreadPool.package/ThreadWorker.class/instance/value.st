accessing
value
	TimeStamp now < expires ifTrue: [ value := block value ].
	hasValue := true.
	^ value