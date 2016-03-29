def build_array(x, y, z)
  build_array = [x, y, z]
  p build_array
end

def add_to_array(a, b)
  add_to_array = (a << b).flatten
  p add_to_array
end


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

array.insert(2, "tres")

p array

array.delete("one")

p array

if array.include?("four")
  p "The array includes the word four."
else
end

another_array = [2, 3, 4, 5]

third_array = array + another_array

p third_array


build_array(1, "two", nil)
​
add_to_array([], "a")
add_to_array(["a", "b", "c", 1, 2], 3)
add_to_array(["yas"], ["queen"])


