# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!" + " *fist-bump*"
#   end
# end

# p Shout.yell_angrily("Oh, fiddlesticks")
# p Shout.yelling_happily("yas queen")

# change shout module to mixin
module Shout
  def yell_angrily(words)
    words.capitalize + "!!!" + " :("
  end

  def yelling_happily(words)
    words.upcase + "!" + " *fist-bump*"
  end
end

#create two new classes and include shout module
class Friend
  include Shout
end

class Foe
  include Shout
end

# instantiate instances of classes and call module methods
friend = Friend.new
p friend.yelling_happily("omg i love your shirt")
p friend.yell_angrily("i dropped my ice cream noooo")

foe = Foe.new
p foe.yelling_happily("i win")
p foe.yell_angrily("you will rue the day you ever crossed me")

