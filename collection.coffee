@Testc = new Meteor.Collection 'testc'

#// for testing out autoform
@Schema = {}
Schema.schema = #new SimpleSchema
	title:
		type: String
		label:'书名'
		max:200	
	
	author:
		type: String
		label:'Author'
	
	copies:
		type: Number
		label:'Number of copies'
		min:0
	
	lastCheckedOut:
		type: Date
		label:'Last date this book is checked out'
		optional:true
	
	summary:
		type: String
		label:'Brief summary'
		optional:true
		max:1000
@Books = new Meteor.Collection 'books', Schema #.schema
