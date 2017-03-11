accessing
cachedControllerForModel: aModel
	| ctrl |
	modelToControllerCache
		ifNil: [ modelToControllerCache := Dictionary new.
			self controllers
				do: [ :each | modelToControllerCache at: each model put: each ] ].
	ctrl := modelToControllerCache at: aModel ifPresent: #yourself.
	(self controllers includes: ctrl)
		ifTrue: [ ^ ctrl ].
	ctrl := self controllers detect: [ :fresh | fresh model = aModel ].
	modelToControllerCache at: aModel put: ctrl.
	^ ctrl