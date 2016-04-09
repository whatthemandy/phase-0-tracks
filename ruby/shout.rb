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

