visiting
visitMessageNode: aMessageNode
	(aMessageNode isCascaded not or: [ aMessageNode isFirstCascaded ])
		ifTrue: [ self visitNode: aMessageNode receiver ].
	aMessageNode arguments do: [ :each | self visitNode: each ].
	
	((aMessageNode selector = #iconNamed: and: [ aMessageNode arguments first isLiteralNode ])
		and: [ aMessageNode arguments first value isSymbol ])
		ifTrue: [ icons add: aMessageNode arguments first value ]