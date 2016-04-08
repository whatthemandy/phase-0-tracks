# Class Design Pseudocode - BOOKS

# Characteristics/Attributes:
# Amazing: yes (boolean)
# Title: varies (string)
# Number of pages: varies (integer)

# Behavior/Methods:
# Inspire emotion (parameter: emotion)
# Take time to read (parameter: hours)
# Change your life
# Teach you something new


class Books

  attr_reader :title :pages
  attr_accessor :quality

  def initialize(title)
    puts "Initializing new book: #{title}."
  end

end


