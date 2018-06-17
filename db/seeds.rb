parameters = {
  users: [{name: 'Monkey D. Luffy'}, {name: 'Peter Parker'}],
  authors: [
    {
      name: 'Eichiro Oda',
      books: [
        Book.new(title: 'One Piece 1 - Romance Dawn', published_on: Date.new(1997, 12, 24)),
        Book.new(title: 'One Piece 41 - Declaration of War', published_on: Date.new(2006, 4, 4)),
        Book.new(title: 'One Piece 61 - Romance Dawn: For the New World', published_on: Date.new(2011, 2, 4)),
        Book.new(title: 'One Piece 89 - Bad End Muscial', published_on: Date.new(2018, 6, 4))
      ]
    }, {
      name: 'Stan Lee',
      books: [
        Book.new(title: 'Fantastic Four #1', published_on: Date.new(1961, 11, 1)),
        Book.new(title: 'The Amazing Spider-man #1', published_on: Date.new(1963, 3, 1)),
        Book.new(title: 'The Incredible Hulk #1', published_on: Date.new(1962, 5, 1)),
        Book.new(title: 'The X-Men #1', published_on: Date.new(1963, 9, 1))
      ]
    }
  ]
}

users = []
parameters[:users].each { |user| users << User.create(user) }

authors = []
parameters[:authors].each { |author| authors << Author.create(author) }

users.each_index do |i|
  Follow.create(user: users[i], author: authors[i])
  authors[i].books.each { |book| Upvote.create(user: users[i], book: book) }
end