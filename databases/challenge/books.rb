require 'sqlite3'

db = SQLite3::Database.new("books.db")
db.results_as_hash = true

create_info_table = <<-SQL
  CREATE TABLE IF NOT EXISTS info(
    id INTEGER PRIMARY KEY,
    author VARCHAR(255),
    read VARCHAR(255),
    rating INT,
    comment VARCHAR(255),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id)
    )
SQL

create_books_table = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
    )
SQL

# create books and genre tables if they don't already exist
db.execute(create_books_table)
db.execute(create_info_table)

# add test book
# db.execute("INSERT INTO books (title) VALUES ('Enders Game')")
# db.execute("INSERT INTO info (author, read, rating, comment, book_id) VALUES ('Orson Scott Card', 'yes', 5, 'Holy Guacamole! A+!', 1)")

def add_book(db, title)
  db.execute("INSERT INTO books (title) VALUES (?)", [title])
end

def add_info(db, author, read, rating, comment, book_id)
  db.execute("INSERT INTO info (author, read, rating, comment, book_id) VALUES (?, ?, ?, ?, ?)", [author, read, rating, comment, book_id])
end


# method to add new book:
def new_book(db)
  puts "Please enter title of book to add:"
  title = gets.chomp
  add_book(db, title)
end

def enter(db)
  puts "Please enter new book's ID number:"
  #change to book id last index num minus one (since the new book adds on to end of the list)
  book_id = gets.chomp.to_i

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

  add_info(db, author, read, rating, comment, book_id)
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

# method to view all book titles:
def view_titles(db)
    puts "------------------------------" #for easier readability
    puts "BOOK TITLES:\n\n"
    all = db.execute("SELECT * FROM books")
    all.each do |book|
      puts "ID: #{book['id']}"
      puts "Title: #{book['title']}"
    end
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
puts "  When finished, enter 'done'."

input = gets.chomp

  if input == "add"
    new_book(db)
    view_titles(db)
    enter(db)

  elsif input == "view"
    puts "Enter book title or 'all' to view all books:"
    choice = gets.chomp
      if choice == "all"
        view_all(db)
      else
        view_one(db, choice)
      end

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
      end
  else
    puts "Please try again."
  end
end

puts "Happy reading!"