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

longest(["long phrase", "longest phrase", "longer phrase"]);
longest(["supercalifragilisticexpialidocious", "nope", "bonkers"]);


