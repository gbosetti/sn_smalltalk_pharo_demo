"
An User is a frigging user!.

Instance Variables
	friends:		<Object>
	name:		<Object>
	wall:		<Object>

friends
	- xxxxx

name
	- xxxxx

wall
	- xxxxx

"
Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'name',
		'wall',
		'friends'
	],
	#category : #'Practica5-1'
}

{ #category : #'as yet unclassified' }
User >> addFriend: aUser [
	"Agregar aUser a la lista de amigos"

	self friends add: aUser
]

{ #category : #'as yet unclassified' }
User >> addMessage: aMessage [

	self wall post: aMessage
]

{ #category : #'as yet unclassified' }
User >> floodPost: aString [
	"Publica un mensaje en muro"

	self wall post: (WallMessage text: aString from: self).
	self friendsToFriends: aString
]

{ #category : #'as yet unclassified' }
User >> friends [
	^friends
]

{ #category : #'as yet unclassified' }
User >> friendsOfMyfriends [
	^ self friends flatCollectAsSet: [ :friend | friend friends ]
]

{ #category : #'as yet unclassified' }
User >> friendsToFriends: aString [
	self friendsOfMyfriends do: [ :friend | friend newMessage: aString from: self ]
]

{ #category : #'as yet unclassified' }
User >> initialize [
	friends := OrderedCollection new.
	wall := Wall new
]

{ #category : #'as yet unclassified' }
User >> messages [ 
^ self wall messages
]

{ #category : #'as yet unclassified' }
User >> name [
	^ name
]

{ #category : #'as yet unclassified' }
User >> name: aString [
	name := aString
]

{ #category : #'as yet unclassified' }
User >> newMessage: aMessage from: aFriend [
	"Los usuarios reciben este mensaje cuando el amigo indicado por el parámetro anotherUser publicó el mensaje aMessage en su propio muro"

	self addMessage: (WallMessage text:aMessage from:aFriend)
	
]

{ #category : #'as yet unclassified' }
User >> post: aString [
	"Publica un mensaje en muro"

	self wall post: (WallMessage text: aString from: self).
	self updateFriends: aString
]

{ #category : #'as yet unclassified' }
User >> updateFriends:aString [
	self friends do: [ :friend| friend newMessage: aString from: self ]
]

{ #category : #'as yet unclassified' }
User >> wall [
	^ wall
]
