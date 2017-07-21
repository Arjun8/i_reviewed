Reviewer.destroy_all
Book.destroy_all

Book.create! [
{name: "Eloquent ruby", author: "Russ Olsen"},
{name: "Beginning ruby", author: "Peter Cooper"},
{name: "Metaprogramming ruby", author: "Paolo Perrotta"},
{name: "Design Patterns in ruby",author: "Russ Olsen"},
{name: "The ruby programming language", author: "David Flanagan"}
]
100.times {|index| Book.create! name:"Book#{index}",author:"Author#{index}"}
elo=Book.find_by name: "Eloquent ruby"
elo.notes.create! [
{title:"Wow",note:"Great book to learn Ruby"},
{title:"Funny",note:"Doesn't put you to sleep"}
]
re=Reviewer.create! [
{name:"arjun",password:"akasana"},
{name:"ashish",password:"12345"}
]
Book.all.each do |book|
	book.reviewer = re.sample
	book.save!
end
