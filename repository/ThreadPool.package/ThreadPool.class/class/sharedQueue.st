queries
sharedQueue
	"so it works in Squeak and Pharo where SharedQueue2 was made the default one"
	^ Smalltalk 
		at: #SharedQueue2
		ifAbsent: [ SharedQueue ]