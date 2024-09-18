Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice-tests',
	#package : 'Dice',
	#tag : 'tests'
}

{ #category : 'tests' }
DieTest >> testAddTwoDice [

	| dieHandle |
	dieHandle := (Die withFaces: 6) + (Die withFaces: 6).
	self assert: dieHandle dices size equals: 2.
]

{ #category : 'tests' }
DieTest >> testAddingADieAndHandle [

	| dieHandle |
	dieHandle := (Die withFaces: 6) + (DieHandle new addDie: (Die withFaces: 10); yourself).
	self assert: dieHandle dices size equals: 2
]

{ #category : 'tests' }
DieTest >> testCreationIsOk [

	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : 'tests' }
DieTest >> testInitializeIsOk [

	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRolling [

	| die |
	die := Die new.
	10 timesRepeat: [ self assert: (die roll between: 1 and: 6) ]
]
