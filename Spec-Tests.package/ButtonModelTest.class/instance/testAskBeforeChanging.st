as yet unclassified
testAskBeforeChanging
	|buttonModel window state|
	
	buttonModel := ButtonModel new.

	self assert: buttonModel askBeforeChanging not.
	window := buttonModel openWithSpec.
	state := buttonModel widget askBeforeChanging.
	self assert: state not.
	buttonModel askBeforeChanging: true.
	state := buttonModel widget askBeforeChanging.
	window close.
	self assert: state
