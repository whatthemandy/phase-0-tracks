array = []

p array

array << "one"
array << "two"
array << "three"
array << "four"
array << "five"

p array

array.delete_at(2)

p array

array.insert(2, "dos")

p array

array.delete("one")

p array

if array.include?("four")
  p "The array includes the word four."
else
end

another_array = [2, 4, 6, 8]

third_array = array + another_array

p third_array


