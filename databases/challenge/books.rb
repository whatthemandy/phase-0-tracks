require 'sqlite3'

db = SQLite3::Database.new("books.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    read VARCHAR(255),
    rating INT,
    comment VARCHAR(255)
    )
SQL

db.execute(create_table_cmd)

# add test book
# db.execute("INSERT INTO books (title, author, read, rating, comment) VALUES ('Enders Game', 'Orson Scott Card', 'yes', 5, 'Incredible!')")

def create_book(db, title, author, read, rating, comment)
  db.execute("INSERT INTO books (title, author, read, rating, comment) VALUES (?, ?, ?, ?, ?)", [title, author, read, rating, comment])
end

def add(db)
  puts "Please enter title:"
  title = gets.chomp

  puts "Please enter author's name:"
  author = gets.chomp

  puts "Have you read this book yet? (yes/no)"
  read = gets.chomp
  read = read.capitalize
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

  create_book(db, title, author, read, rating, comment)
end

def view(db)
  all = db.execute("SELECT * FROM books")
  all.each do |book|
    puts "Title: #{book['title']}"
    puts "Author: #{book['author']}"
    puts "Read Yet?: #{book['read']}"
    puts "Rating: #{book['rating']}"
    puts "Comments: #{book['comment']}\n\n"
  end
end

# User interface:

puts "Welcome to your book log!"
puts "What would you like to do?"
puts "Please enter 'add', to add a new book, 'update' to update an existing book, or 'view' to view your book log:"
input = gets.chomp

if input=="add"
  add(db)
elsif input=="view"
  view(db)
else
end
