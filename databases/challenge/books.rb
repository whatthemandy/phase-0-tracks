require 'sqlite3'

db = SQLite3::Database.new("books.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    read BOOLEAN,
    rating INT,
    comment VARCHAR(255)
    )
SQL

db.execute(create_table_cmd)

# add test book
# db.execute("INSERT INTO books (title, author, read, rating, comment) VALUES ('Enders Game', 'Orson Scott Card', 'true', 5, 'Holy Guacamole! A+!')")

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
  input = gets.chomp
    if input == "Yes" || input == "yes" || input == "y"
      read = 'true'
    else
      read = 'false'
    end

  puts "Please enter rating (1-5, or 0 if not yet read):"
  rating = gets.chomp
  rating = rating.to_i
  if rating == 0
    rating = nil
  else
  end

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

# method to view all unread book titles
def view_unread(db)
    puts "----------------------------------------" #for easier readability
    puts "UNREAD TITLES:"
    puts "Here are some great books you've been meaning to read!\n\n"
    all = db.execute("SELECT * FROM books WHERE read = 'false' ORDER BY title")
    all.each do |book|
      puts "Title: #{book['title']}"
    end
end

# method to view all books sorted by title:
def view_all(db)
    puts "----------------------------------------" #for easier readability
    puts "BOOK LOG:"
    puts "So many beautiful books!\n\n"
    all = db.execute("SELECT * FROM books ORDER BY title")
    all.each do |book|
      puts "Title: #{book['title']}"
      puts "Author: #{book['author']}"
      puts "Already Read?: #{book['read']}"
      puts "Rating: #{book['rating']}"
      puts "Comments: #{book['comment']}\n\n"
    end
end

# method to view all books sorted by rating:
def view_rating(db)
    puts "----------------------------------------" #for easier readability
    puts "BOOK LOG:"
    puts "So many beautiful books!\n\n"
    all = db.execute("SELECT * FROM books WHERE rating<>0 ORDER BY rating DESC")
    all.each do |book|
      puts "Title: #{book['title']}"
      puts "Author: #{book['author']}"
      puts "Already Read?: #{book['read']}"
      puts "Rating: #{book['rating']}"
      puts "Comments: #{book['comment']}\n\n"
    end
end

# method to remove book from log:
def remove(db, choice)
  db.execute("DELETE FROM books WHERE title = ?", [choice])
end

# method to update title:
def update_title(db, choice, correction)
  db.execute("UPDATE books SET title = ? WHERE title = ?", [correction, choice])
end

# method to update author:
def update_author(db, choice, correction)
  db.execute("UPDATE books SET author = ? WHERE title = ?", [correction, choice])
end

# method to update read-status:
def update_read_status(db, choice, correction)
  db.execute("UPDATE books SET read = ? WHERE title = ?", [correction, choice])
end

# method to update rating:
def update_rating(db, choice, correction)
  db.execute("UPDATE books SET rating = ? WHERE title = ?", [correction, choice])
end

# method to update comment:
def update_comment(db, choice, correction)
  db.execute("UPDATE books SET comment = ? WHERE title = ?", [correction, choice])
end

# User interface:
puts "Welcome to your book log!"

input = ""
until input == "done"
puts "----------------------------------------" #for easier readability
puts "  To add a new book, enter 'add',"
puts "  To update an existing book, enter 'update',"
puts "  To view book details, enter 'view',"
puts "  To remove book from log, enter 'remove',"
puts "  When finished, enter 'done'."

input = gets.chomp

  if input == "add"
    add(db)

  elsif input == "view"
    puts "Enter specific book title for one book's details, 'unread' to see all unread titles, 'rating' to see details of all read books (sorted by rating), or 'all' to view details of all books (sorted by title):"
    choice = gets.chomp
      if choice == "all"
        view_all(db)
      elsif choice == "unread"
        view_unread(db)
      elsif choice == "rating"
        view_rating(db)
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
        puts "What is the correct title?"
        correction = gets.chomp
        update_title(db, choice, correction)
      elsif input == "author"
        puts "What is the correct author?"
        correction = gets.chomp
        update_author(db, choice, correction)
      elsif input == "read status"
        puts "Have you read this book yet?"
        correction = gets.chomp
          if correction == "Yes" || correction == "yes" || correction == "y"
            correction = 'true'
          else
            correction = 'false'
          end
        update_read_status(db, choice, correction)
      elsif input == "rating"
        # also update read-status in case rating is changing from zero
        puts "Have you read this book yet?"
        correction = gets.chomp
          if correction == "Yes" || correction == "yes" || correction == "y"
            correction = 'true'
          else
            correction = 'false'
          end
        update_read_status(db, choice, correction)

        puts "What is the correct rating?"
        correction = gets.chomp
          if correction == 0
            correction = nil #I don't think this works
          else
          end
        update_rating(db, choice, correction)
      elsif input == "comment"
        puts "What should the new comment be?"
        correction = gets.chomp
        update_comment(db, choice, correction)
      else
        puts "Oops! Please try again."
        redo
      end

  elsif input == "done"
    break

  else
    puts "Oops! Please try again."
    redo

  end
end

puts "Happy reading!"

