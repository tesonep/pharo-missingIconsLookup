as yet unclassified
missingIcons
	| iconLookup |
	iconLookup := IconLookup new.
	(#iconNamed: senders) do:[:e | e method ast acceptVisitor: iconLookup].

	^ iconLookup missingIcons