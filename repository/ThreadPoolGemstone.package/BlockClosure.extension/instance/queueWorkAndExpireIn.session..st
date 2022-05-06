*ThreadPoolGemstone
queueWorkAndExpireIn: aDuration session: aSession
  ^ (Smalltalk hasClassNamed: #'WAGemStoneServerBackgroundTask')
    ifTrue: [ WAGemStoneServerBackgroundTask task: self session: aSession ]
    ifFalse: [ self value ]