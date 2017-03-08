# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book1 = Book.create
book2 = Book.create
bookshelf1 = Bookshelf.create
ba1 = BookAssociation.create(book: book1, bookshelf: bookshelf1)
ba2 = BookAssociation.create(book: book2, bookshelf: bookshelf1)