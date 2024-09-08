Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testDecrement [

	| c |
	c := Counter new.
	c count: 25.
	c decrement.
	self assert: c count equals: 24
]

{ #category : 'tests' }
CounterTest >> testIncrement [

	| c |
	c := Counter new.
	c count: 25.
	c increment.
	self assert: c count equals: 26
]

{ #category : 'tests' }
CounterTest >> testInitialize [

	|c|
	c := Counter new.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testStartingAt [

	|c|
	c := Counter startingAt: 5.
	self assert: c count equals: 5
]
