// write a function that takes an array of words or phrases and returns the longest string in the array:
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



// write a function that takes two objects and checks to see if the objects share at least one key-value pair:
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
// but it was as close as I could come to figuring out a solution
function match(x, y) {
  if ((Object.keys(x)[0] == Object.keys(y)[0]) || (Object.keys(x)[1] == Object.keys(y)[1])) {
    return true;
  }
  else {
    return false;
  }
}
match({name: "Steven", age: 54}, {name: "Tamir", age: 54})

// I tried to turn the second solution into a for loop but it doesn't work:
// function match_loop(x, y) {
//   for (var i = 0; i < Object.keys(x).length; i++) {
//       if (Object.keys(x)[i] == Object.keys(y)[i]); {
//       console.log("true");
//       }
//   }
// }
// match_loop({name: "Steven", age: 54}, {name: "Tamir", age: 54})




