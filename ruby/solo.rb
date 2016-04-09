# Class Design Pseudocode - BOOKS

# Characteristics/Attributes:
# Quality: varies (string)
# Title: varies (string)
# Number of pages: varies (integer)

# Behavior/Methods:
# Inspire emotion (parameter: emotion)
# Take time to read (parameter: hours)
# Change your life


class Books
  attr_reader :title, :pages, :author
  attr_accessor :quality

  def initialize(title, author, pages, quality)
    # puts "Initializing new book: #{title}."
    @title = title
    @author = author
    @pages = pages
    @quality = quality
  end

  def inspire(emotion)
    puts "'#{title}' made me feel #{emotion}."
  end

  def time_to_read(num_hours)
    hours = hours.to_i
    puts "'#{title}' takes an average of #{num_hours} hours to read."
  end

  def change_life
    puts "'#{title}' changed my life!"
  end
end

# create new book instance to test class methods:
# book = Books.new("Ender's Game", "Orson Scott Card", 324, "Super duper")
# p book.title
# p book.author
# p book.pages
# p book.quality
# p book.inspire("both sorrow and joy in the best way")
# p book.time_to_read(15)
# p book.change_life
# book.quality = "BOMB-DIGGITY"
# p book.quality

# p book


# set up empty array to store new book instances in
books = []

# loop - ask user for book info and store in array until user is done
loop do

  # get book information from user, end loop when user enters "done"
  puts "Enter book title, or 'done':"
  title = gets.chomp
  break if title == "done"

  puts "Enter author:"
  author = gets.chomp

  puts "Enter number of pages:"
  pages = gets.chomp.to_i

  puts "Enter quality of book:"
  quality = gets.chomp

  # initialize new book instance using user input as arguments
  book = Books.new(title, author, pages, quality)

  # store new book instance in array
  books << book

end

# print array
# print "Book data: "
# p books

# print out info for each book (with spaces so it's easier to read)
puts
puts "CONFIRMATION:"
puts

# for the number of books there are, print info for each all pretty-like
books.length.times do |i|
  puts "#{i+1}. Title: #{books[i].title}"
  puts "   Author: #{books[i].author}"
  puts "   Number of Pages: #{books[i].pages}"
  puts "   Quality of book: #{books[i].quality}"
  puts
end