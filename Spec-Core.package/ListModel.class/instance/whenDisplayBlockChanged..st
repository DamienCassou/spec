protocol-events
whenDisplayBlockChanged: aBlock
	<api: #event>
	"Set a block to value when the filtering block has changed"
	
	wrapBlockHolder whenChangedDo: aBlock