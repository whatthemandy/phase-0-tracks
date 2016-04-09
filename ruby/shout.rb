module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!" + " *fist-bump*"
  end
end

p Shout.yell_angrily("Oh, fiddlesticks")
p Shout.yelling_happily("yas queen")

