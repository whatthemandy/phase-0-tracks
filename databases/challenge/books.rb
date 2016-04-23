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
# db.execute("INSERT INTO books (title, author, read, rating, comment) VALUES ('Enders Game', 'Orson Scott Card', 'yes', 5, 'Holy Guacamole! A+!')")

def create_book(db, title, author, read, rating, comment)
  db.execute("INSERT INTO books (title, author, read, rating, comment) VALUES (?, ?, ?, ?, ?)", [title, author, read, rating, comment])
end

# method to add new book:
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

# method to view one book:
def view_one(db, choice)
    puts "------------------------------" #for easier readability
    puts "BOOK LOG:\n\n"
    book = db.execute("SELECT * FROM books WHERE title = ?", [choice])
    book.each do |info|
      puts "Title: #{info['title']}"
      puts "Author: #{info['author']}"
      puts "Read Yet?: #{info['read']}"
      puts "Rating: #{info['rating']}"
      puts "Comments: #{info['comment']}\n\n"
    end
end

# method to view all books:
def view_all(db)
    puts "------------------------------" #for easier readability
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

# method to remove book from log:
def remove(db, choice)
  db.execute("DELETE FROM books WHERE title = ?", [choice])
end

# method to update title:
def update_title(db, choice, change)
  db.execute("UPDATE books SET title = ? WHERE title = ?", [change, choice])
end

# method to update author:
def update_author(db, choice, change)
  db.execute("UPDATE books SET author = ? WHERE title = ?", [change, choice])
end

# method to update read-status:
def update_read_status(db, choice, change)
  db.execute("UPDATE books SET read = ? WHERE title = ?", [change, choice])
end

# method to update rating:
def update_rating(db, choice, change)
  db.execute("UPDATE books SET rating = ? WHERE title = ?", [change, choice])
end

# method to update comment:
def update_comment(db, choice, change)
  db.execute("UPDATE books SET comment = ? WHERE title = ?", [change, choice])
end

# User interface:

puts "Welcome to your book log!"

input = ""
until input == "done"
puts "------------------------------" #for easier readability
puts "  To add a new book, enter 'add',"
puts "  To update an existing book, enter 'update',"
puts "  To view book details, enter 'view',"
puts "  To remove book from log, enter 'remove',"
puts "  When finished, enter 'done'."

input = gets.chomp

  if input == "add"
    add(db)

  elsif input == "view"
    puts "Enter book title or 'all' to view all books:"
    choice = gets.chomp
      if choice == "all"
        view_all(db)
      else
        view_one(db, choice)
      end

  elsif input == "remove"
    puts "Enter title of book to be removed:"
    choice = gets.chomp
    remove(db, choice)

  elsif input == "update"
    puts "Enter title of book to be updated:"
    choice = gets.chomp
    puts "What needs to be updated?  Enter one of the following:"
    puts "  'title', 'author', 'read status', 'rating', or 'comment':"
    input = gets.chomp
      if input == "title"
        puts "What should it be changed to?"
        change = gets.chomp
        update_title(db, choice, change)
      elsif input == "author"
        puts "What should it be changed to?"
        change = gets.chomp
        update_author(db, choice, change)
      elsif input == "read status"
        puts "What should it be changed to?"
        change = gets.chomp
        update_read_status(db, choice, change)
      elsif input == "rating"
        puts "What should it be changed to?"
        change = gets.chomp
        update_rating(db, choice, change)
      elsif input == "comment"
        puts "What should it be changed to?"
        change = gets.chomp
        update_comment(db, choice, change)
      else
        puts "Please try again!"
        redo
      end

  elsif input == "done"
    break

  else
    puts "Please try again!"
    redo

  end

end

puts "Happy reading!"

