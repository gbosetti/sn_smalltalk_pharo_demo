"
A Wall is  a place to leave messages .

Instance Variables
	list:		<Object>

list
	- xxxxx

"
Class {
	#name : #Wall,
	#superclass : #Object,
	#instVars : [
		'messages'
	],
	#category : #'Practica5-1'
}

{ #category : #'as yet unclassified' }
Wall >> initialize [
	messages :=OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Wall >> list [
	^ self messages
]

{ #category : #'as yet unclassified' }
Wall >> messages [
	^ messages
]

{ #category : #'as yet unclassified' }
Wall >> numberOfMessages [
	"Retorna la cantidad de mensajes posteados en el muro"

	^ self list size
]

{ #category : #'as yet unclassified' }
Wall >> oldestMessage [
	^ self messages first
]

{ #category : #'as yet unclassified' }
Wall >> post: aMessage [
	"Agrega un mensaje al muro"
	(self numberOfMessages = 10) ifTrue: [self removeOldestMessage].
  	self list add: aMessage
]

{ #category : #'as yet unclassified' }
Wall >> removeMessage: aMessage [
	"Elimina el mensaje del muro"

	self list remove: aMessage
]

{ #category : #'as yet unclassified' }
Wall >> removeOldestMessage [
	self removeMessage: self oldestMessage.
]
