Class {
	#name : #WallMessage,
	#superclass : #Object,
	#instVars : [
		'text',
		'date',
		'author'
	],
	#category : #'Practica5-1'
}

{ #category : #'as yet unclassified' }
WallMessage class >> text: aString from: aUser [
	^ self new
		text: aString;
		author: aUser;
		yourself
]

{ #category : #'as yet unclassified' }
WallMessage >> author: aUser [
	author := aUser
]

{ #category : #'as yet unclassified' }
WallMessage >> date [
	^ date
]

{ #category : #'as yet unclassified' }
WallMessage >> date: aDate [
	date:=aDate
]

{ #category : #'as yet unclassified' }
WallMessage >> initialize [
	date := Date today.
	
]

{ #category : #'as yet unclassified' }
WallMessage >> text: aString [
	text := aString
]
