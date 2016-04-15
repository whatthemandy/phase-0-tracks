// count up to ten and log each number:
for (var i = 1; i < 11; i++) {
  console.log(i);
}

// count down from ten and log each number:
for (var i = 10; i > 0; i--) {
  console.log(i);
}

// pseudocode a function that takes a string as a parameter and reverses the string:
// iterate through string, starting with last object
// print each object

function reverse(string) {
  for (var i = string.length; i > 0; i--) {
    console.log(string.charAt(i-1));
  }
}

reverse("hello")


