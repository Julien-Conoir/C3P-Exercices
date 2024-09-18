Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dices'
	],
	#category : 'Dice-die',
	#package : 'Dice',
	#tag : 'die'
}

{ #category : 'arithmetic' }
DieHandle >> + aDicable [

	^ aDicable sumWithHandle: self
]

{ #category : 'operation' }
DieHandle >> addDie: aDie [

	dices add: aDie
]

{ #category : 'operation' }
DieHandle >> diceNumber [

	^ dices size
]

{ #category : 'accessing' }
DieHandle >> dices [

	^ dices
]

{ #category : 'accessing' }
DieHandle >> dices: anOrderedCollection [

	dices := anOrderedCollection
]

{ #category : 'operation' }
DieHandle >> faces [

	^ dices sum: [ :dice | dice faces ]
]

{ #category : 'initialization' }
DieHandle >> initialize [

	dices := OrderedCollection new
]

{ #category : 'operation' }
DieHandle >> roll [

	^ dices sum: [ :die | die roll ]
]

{ #category : 'arithmetic' }
DieHandle >> sumWithDie: aDie [

	| dieHandle |
	dieHandle := self class new.
	dieHandle addDie: aDie.
	self dices do: [ :die | dieHandle addDie: die ].
	^ dieHandle
]

{ #category : 'arithmetic' }
DieHandle >> sumWithHandle: aDieHandle [

	| dieHandle |
	dieHandle := self class new.
	aDieHandle dices do: [ :die | dieHandle addDie: die ].
	self dices do: [ :die | dieHandle addDie: die ].
	^ dieHandle
]
