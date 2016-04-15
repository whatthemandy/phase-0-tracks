// declare arrays
var colors = ["blue", "pink", "green", "orange"];
var names = ["Ed", "Bob", "Mike", "Pat"];

// add to arrays
colors.push("yellow");
names.push("Sally");

// use two arrays to make object using names as keys and colors as their values
var horses = {};

for (var index = 0; index < colors.length; index++) {
    horses[names[index]] = colors[index];
}
console.log(horses);

