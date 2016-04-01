 def say_hello
   x = "Mandy"
   y = "Kyrene"
   puts "Before block"
   yield(x, y)
   puts "After block"
 end

say_hello { |x, y| puts "Hi #{x} and #{y}!" }

favorite_color = {
  mandy: "gray",
  kyrene: "red",
  bobby: "green",
  cindy: "pink",
  alex: "purple"
}

ages = [27, 21, 25, 18, 19]
