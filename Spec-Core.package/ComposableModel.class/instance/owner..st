accessing
owner: anObject
	
	owner ifNotNil: [owner removeDependent: self].
	anObject ifNotNil: [anObject addDependent: self].
	owner := anObject.