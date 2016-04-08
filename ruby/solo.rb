# Class Design Pseudocode - BOOKS

# Characteristics/Attributes:
# Amazing: yes (boolean)
# Title: varies (string)
# Number of pages: varies (integer)

# Behavior/Methods:
# Inspire emotion (parameter: emotion)
# Take time to read (parameter: hours)
# Change your life


class Books
  attr_reader :title, :pages
  attr_accessor :quality

  def initialize(title, pages, quality)
    puts "Initializing new book: #{title}."
    @title = title
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
# book = Books.new("Ender's Game", 350)
# p book.title
# p book.pages
# p book.inspire("happy")
# p book.time_to_read(15)
# p book.change_life
# book.quality = "Excellent"
# p book.quality

# set up empty array to store new book instances in
books = []

# get book information from user
puts "Enter book title:"
title = gets.chomp

puts "Enter number of pages:"
pages = gets.chomp

puts "Enter quality of book:"
quality = gets.chomp

# initialize new book instance using user input as arguments
book = Books.new(title, pages, quality)

# store new book instance in array
books << book

# print array
p books

