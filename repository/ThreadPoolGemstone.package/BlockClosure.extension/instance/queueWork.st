*ThreadPoolGemstone
queueWork
  ^ (Smalltalk hasClassNamed: #'WAGemStoneServerBackgroundTask')
    ifTrue: [ self serverBackgroundTask ]
    ifFalse: [ self value ]