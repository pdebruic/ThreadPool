accessing
evaluate
	TimeStamp now < expires ifTrue: 
		[ [ value := block value ] 
			on: Error
			do: [ :err | error := err ] ].
	lock signal