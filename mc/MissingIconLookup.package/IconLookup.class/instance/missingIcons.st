as yet unclassified
missingIcons
	^ icons
		collect: [ :e | Smalltalk ui icons iconNamed: e ifNone: [ e ] ]
		thenSelect: [ :e | e isSymbol ]