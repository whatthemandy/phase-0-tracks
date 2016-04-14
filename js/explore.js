// pseudocode a function that takes a string as a parameter and reverses the string:
// iterate through string, starting with last object
// print each object


function reverse(string) {
  for (var i = string.length; i > 0; i--) {
    console.log(string.charAt(i-1));
  }
}

reverse("hello")


