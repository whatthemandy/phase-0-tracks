// 1. Write a function that takes an array of words or phrases and returns the longest string in the array:
// declare function that takes an array as a parameter
// set empty object variable to eventually equal the longest string
// loop through array and find the length of each string (.length)
// if length of string > current longest string, set string equal to longest variable
// print longest string to console

function longest(array) {
  var longest = "";
  for (var i = 0; i < array.length; i++) {
    if(array[i].length > longest.length) {
        longest = array[i];
    }
  }
  console.log(longest)
}

// driver code to test function:
longest(["long phrase", "longest phrase", "longer phrase"]);
longest(["supercalifragilisticexpialidocious", "nope", "bonkers"]);
longest(["you", "know", "nothing", "jon", "snow"]);



// 2. Write a function that takes two objects and checks to see if they share at least one key-value pair:
// loop through first object's keys and check them against the second's
// if object's first key matches first key in second object, check whether values also match
// if they do, return true, and if not continue checking keys

// first attempt: Object.values doesn't work but I don't know why so this doesn't work...
// function match(x, y) {
//   if ((Object.keys(x)[0] == Object.keys(y)[0]) || (Object.values(x)[0] == Object.values(y)[0])) {
//     console.log("true");
//   }
//   else {
//     console.log("false");
//   }
// }
// match({name: "Steven", age: 54}, {name: "Tamir", age: 54})

// second attempt: works but not as asked... only checks whether the first or second set of keys match
// also the console log prints the answer twice and I don't know why...
function match(x, y) {
  for (var i = 0; i < Object.keys(x).length; i++) {
      if ((Object.keys(x)[0] == Object.keys(y)[0]) || (Object.keys(x)[1] == Object.keys(y)[1])) {
        console.log("true");
      }
     else {
        console.log("false");
     }
  }
}
match({name: "Steven", age: 54}, {name: "Tamir", age: 54})
match({name: "Steven", age: 54}, {surname: "Tamir", children: 4})



// 3. Write a function that takes an integer for length, and builds/returns array of strings of the given length:
// declare function that takes an integer as argument
// establish an empty array to add generated words to
// declare alphabet string to get random letters from
// write a loop to run integer number of times
// get a random letter from the alphabet
// add to word random number of times
// add word to array
// print array

function random(integer) {
  array = [];
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < integer; i++) {
    var word = "";
      for(var index = 0; index < Math.floor((Math.random()*10 + 1)); index++) {
        word += alpha.charAt(Math.floor((Math.random()*10 + 1)));
      }
    array.push(word);
    }
    return array  // changed from "console.log(array)"
}
random(5)

// set new "array" variable to equal the result of the random generator and
// run longest function on random array to find longest string
var array = random(5)
console.log(array)
longest(array)

// 10 times: generate an array, print the array, feed the array to longest function & print result:
for (i = 1; i < 11; i++) {
    var array = random(5)
    console.log(array)
    longest(array)
}

