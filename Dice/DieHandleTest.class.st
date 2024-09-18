Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'Dice-tests',
	#package : 'Dice',
	#tag : 'tests'
}

{ #category : 'tests' }
DieHandleTest >> testAddingAnHandleWithADie [

	| dieHandle res |
	dieHandle := DieHandle new
	addDie: (Die withFaces: 6);
	addDie: (Die withFaces: 10);
	yourself.
	res := dieHandle + (Die withFaces: 20).
	self assert: res diceNumber equals: 3
]

{ #category : 'tests' }
DieHandleTest >> testAddingTwiceTheSameDice [

	| dieHandle |
	dieHandle := DieHandle new.
	dieHandle addDie: (Die withFaces: 6).
	self assert: dieHandle diceNumber equals: 1.
	dieHandle addDie: (Die withFaces: 6).
	self assert: dieHandle diceNumber equals: 2.

]

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [

	| dieHandle |
	dieHandle := DieHandle new.
	dieHandle addDie: (Die withFaces: 6).
	self assert: dieHandle diceNumber equals: 1.
	dieHandle addDie: (Die withFaces: 6).
	self assert: dieHandle diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testNumberOfFaces [

	| dieHandle |
	dieHandle := (DieHandle new
	addDie: (Die withFaces: 10);
	addDie: (Die withFaces: 6);
	yourself).
	self assert: dieHandle faces equals: 16
]

{ #category : 'tests' }
DieHandleTest >> testRolling [

	| dieHandle |
	dieHandle := DieHandle new.
	dieHandle addDie: (Die withFaces: 6).
	dieHandle addDie: (Die withFaces: 10).
	10 timesRepeat: [ self assert: (dieHandle roll between: 2 and: 16) ]
]

{ #category : 'tests' }
DieHandleTest >> testSimpleHandle [

	self assert: 2 D20 diceNumber equals: 2
]

{ #category : 'tests' }
DieHandleTest >> testSumOfHandles [

	| hd1 hd2 hd3 |
	hd1 := DieHandle new
		addDie: (Die withFaces: 20);
		addDie: (Die withFaces: 20); yourself.
	hd2 := DieHandle new
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 10); yourself.
	hd3 := hd1 + hd2.
	self assert: hd3 diceNumber equals: 4.


]

{ #category : 'tests' }
DieHandleTest >> testSumming [

	| dieHandle |
	dieHandle := 2 D20 + 3 D10.
	self assert: dieHandle diceNumber equals: 5.

]
