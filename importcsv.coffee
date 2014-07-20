if Meteor.isClient
  Template.hello.helpers
    greeting: ->
      "Welcome to importcsv."
    recs: -> Testc.find {}

  Template.hello.events
    'click input': ->

###
to import:
	1 have meteor running
	2 have a full mongo installed
	3 do the following
		mongoimport -h localhost:3002 --db meteor --collection testc --type csv --file ./pub/hello.csv --fields key, value, other
###

if Meteor.isServer 
  Meteor.startup ->
