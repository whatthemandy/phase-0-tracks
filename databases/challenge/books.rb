require 'sqlite3'

db = SQLite3::Database.new("books.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author_fn VARCHAR(255),
    author_ln VARCHAR(255),
    genre VARCHAR(255),
    rating INT,
    comment VARCHAR(255),
    read VARCHAR(255) #changed to string from boolean
    )
SQL

db.execute(create_table_cmd)

# add test book
# db.execute("INSERT INTO books (title, author_fn, author_ln, genre, rating, comment, read) VALUES ('Enders Game', 'Orson Scott', 'Card', 'Science Fiction', 5, 'Sooo good', 'true')")

def create_book(db, title, author_fn, author_ln, genre, rating, comment, read)
  db.execute("INSERT INTO books (title, author_fn, author_ln, genre, rating, comment, read) VALUES (?, ?, ?, ?, ?, ?, ?)", [title, author_fn, author_ln, genre, rating, comment, read])
end

puts "Welcome to your book log!"
# puts "What would you like to do?  Add, update, or view?"

puts "Add a new book! Please enter title:"
title = gets.chomp

puts "Please enter author's first/middle name:"
author_fn = gets.chomp

puts "Please enter author's last name:"
author_ln = gets.chomp

puts "Please enter book genre:"
genre = gets.chomp

puts "Have you read this book yet? (yes/no)"
read = gets.chomp
  # if input == "Yes" || input == "yes" || input == "y"
  #   read = true
  # else
  #   read = false
  # end

puts "Please enter rating (1-5, or 0 if not yet read):"
rating = gets.chomp
rating = rating.to_i

puts "Please enter any comments about book:"
comment = gets.chomp

create_book(db, title, author_fn, author_ln, genre, rating, comment, read)












