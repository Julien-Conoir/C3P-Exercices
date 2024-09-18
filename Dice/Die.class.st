Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice-die',
	#package : 'Dice',
	#tag : 'die'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [

	^ self new faces: aNumber
]

{ #category : 'arithmetic' }
Die >> + aDicable [

	^ aDicable sumWithDie: self
]

{ #category : 'accessing' }
Die >> faces [

	^ faces
]

{ #category : 'accessing' }
Die >> faces: aNumber [

	faces := aNumber
]

{ #category : 'initialization' }
Die >> initialize [

	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream 
		nextPutAll: ' (';
		print: faces;
		nextPutAll: ')'
]

{ #category : 'operation' }
Die >> roll [

	^ faces atRandom

	

	
]

{ #category : 'arithmetic' }
Die >> sumWithDie: aDie [

	^ DieHandle new
		addDie: self;
		addDie: aDie; yourself
]

{ #category : 'arithmetic' }
Die >> sumWithHandle: aDieHandle [

	| dieHandle |
	dieHandle := DieHandle new.
	dieHandle addDie: self.
	aDieHandle dices do: [ :die | dieHandle addDie: die ].
	^ dieHandle
]
