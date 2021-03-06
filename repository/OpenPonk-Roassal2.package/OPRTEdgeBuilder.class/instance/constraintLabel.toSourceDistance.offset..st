labels
constraintLabel: labelName toSourceDistance: aNumber offset: anotherNumber
	| label |
	label := self labelNamed: labelName.
	constraints
		add: [ :edge | 
			OPRTEdgeEndConstraint
				stick: label
				nearStartOfEdge: edge
				distance: aNumber
				offset: anotherNumber.
			OPRTElementsConstraint
				whenDragging: label
				drawLineToPoint: [ (edge shape startingPointOf: edge) * 0.9 + ((edge shape endingPointOf: edge) * 0.1) ] ]