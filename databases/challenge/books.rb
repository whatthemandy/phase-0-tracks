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

def view_all(db)
  # puts "Enter book title or 'all' to view all books:"
  # input = gets.chomp
  # if input == "all"
    puts "BOOK LOG:\n\n"
    all = db.execute("SELECT * FROM books")
    all.each do |book|
      puts "Title: #{book['title']}"
      puts "Author: #{book['author']}"
      puts "Read Yet?: #{book['read']}"
      puts "Rating: #{book['rating']}"
      puts "Comments: #{book['comment']}\n\n"
    end
end

def view_one(db, choice)
    puts "BOOK LOG:\n\n"
    book = db.execute("SELECT * FROM books WHERE title = ?" [choice])
    book.each do |info|
      puts "Title: #{info['title']}"
      puts "Author: #{info['author']}"
      puts "Read Yet?: #{info['read']}"
      puts "Rating: #{info['rating']}"
      puts "Comments: #{info['comment']}\n\n"
    end
end

# view_one(db, "The Book Thief")


# User interface:

puts "Welcome to your book log!"
puts "What would you like to do?"
puts "Please enter 'add', to add a new book, 'update' to update an existing book, or 'view' to view your book log:"
input = gets.chomp

if input == "add"
  add(db)
elsif input == "view"
  puts "Enter book title or 'all' to view all books:"
  choice = gets.chomp
  # choice = choice.to_s
    if choice == "all"
      view_all(db)
    else
      view_one(db, choice)
    end
end


