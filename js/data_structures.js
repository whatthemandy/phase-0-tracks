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

// construction function for car
function Car(type, model, year, isCool) {

  console.log("Our new car:", this);

  this.type = type;
  this.model = model;
  this.year = year;
  this.isCool = isCool

  this.sound = function() { console.log("vroooom"); };
  this.price = function(price) {console.log ("This car costs " + price)};

  console.log("CAR INITIALIZATION COMPLETE");
}

var new_car = new Car ("Honda", "Civic", 2000, true)
new_car.price("$20,000")
console.log(new_car)
