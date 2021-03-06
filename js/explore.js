// count up to ten and log each number:
for (var i = 1; i < 11; i++) {
  console.log(i);
}

// count down from ten and log each number:
for (var i = 10; i > 0; i--) {
  console.log(i);
}

// pseudocode a function that takes a string as a parameter and reverses the string:
// declare empty string
// set counter equal to string length
// set loop to run while count is greater than zero
// add each character in string equal to current count to empty word
// subtract one from count at the end of each iteration
// print out new word

function reverse(string) {
  word = "";
  for (var i = string.length; i > 0; i--) {
    word += string[i-1];
  }
  return word;  //changed from console.log(word); so that lines 35-37 will work
}

reverse("hello")  // no longer prints on its own since console.log changed to return
console.log(reverse("hello"))

// add driver code that calls the function in order to reverse a string of your choice
// and stores the result of the function in a variable
var backwards_granny = reverse("babushka");

// add driver code that prints the variable if some condition is true:
if (1 == 1) {
  console.log(backwards_granny);
}

