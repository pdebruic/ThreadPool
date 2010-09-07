accessing
evaluate
	DateAndTime now < expires ifTrue: 
		[ [ value := block value ] 
			on: Error
			do: 
				[ :err | 
				SSConfig ifDev: [ self break ].
				error := err ] ].
	lock signal