as yet unclassified
testShapeHandling
	| head |
	head := DCRTLineHead shape: DCRTEmptyArrow.
	self assert: head trachelShapeClass = TREmptyArrowHeadShape