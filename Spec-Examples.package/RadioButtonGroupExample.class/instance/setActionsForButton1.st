initialization
setActionsForButton1

	button1 whenActivatedDo: [ container addMorph: morph1 ].
	button1 whenDesactivatedDo: [ container removeMorph: morph1 ]