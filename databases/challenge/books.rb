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
    read BOOLEAN
    )
SQL

db.execute(create_table_cmd)

# add test book
db.execute("INSERT INTO books (title, author_fn, author_ln, genre, rating, comment, read) VALUES ('Enders Game', 'Orson Scott', 'Card', 'Science Fiction', 5, 'Sooo good', 'true')")






