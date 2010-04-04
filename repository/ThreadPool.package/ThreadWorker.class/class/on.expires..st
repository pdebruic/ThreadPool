instance creation
on: aBlock expires: aTime
	^ self new
		block: aBlock;
		expires: aTime;
		yourself