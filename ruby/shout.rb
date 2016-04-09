module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!" + " *fist-bump*"
  end
end

puts yell_angrily("Oh, fiddlesticks")
puts yelling_happily("yas queen")

