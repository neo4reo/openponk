public - sticking
move: aShape alongEdge: anEdge balance: aFloat aboveBy: anInteger
	^ aShape
		translateTo:
			(anEdge shape startingPointOf: anEdge) * aFloat + ((anEdge shape endingPointOf: anEdge) * (1.0 - aFloat))
				- (0 @ anInteger)