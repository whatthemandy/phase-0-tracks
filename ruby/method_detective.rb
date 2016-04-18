# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => "InVeStIgAtIoN"

p "zom".sub("o", "oo")
# => "zoom"

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".ljust(18, " suspects")
# => "the usual suspects"

p " suspects".rjust(18, "the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice(1..-1)
p "The mystery of the missing first letter"[1..-1]
p "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

p "Elementary  ,    my   dear      Watson!".sub("  ,", ",").squeeze(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter ‘a’ appear in this string?".count("a")
# => 4