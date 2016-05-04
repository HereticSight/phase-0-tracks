var colors = ["red", "blue", "yellow", "green"];
var names = ["Binky", "Buster", "Baxter", "Bob"];

colors.push("Mauve");
names.push("Billy");

console.log(colors, names);

var horses = {};
for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
};

console.log(horses);

function Car(Engine, Doors, isHatchback) {
  console.log("Our new car", this);
  
  // Add attributes to the car
  this.engine = Engine;
  this.doors = Doors;
  this.Hatchback = function() {
    if (isHatchback) {
      return console.log("This car is a hatchback.");
    } else {
      return console.log("This car is not a hatchback.");
    };};
      
  // create function to speed up
  this.speedUp = function() {console.log("VROOM VROOM!"); };
  
  console.log("INITIALIZING CAR COMPLETE");
  
}
// create a new car
var car = new Car("V6", 2, false);

console.log("The car's engine is a " + car.engine);
console.log("The car has " + car.doors + " doors.");
car.Hatchback();
car.speedUp();

console.log("-------");

var anothercar = new Car("V8", 4, true);

console.log("The car's engine is a " + anothercar.engine);
console.log("The car has " + anothercar.doors + " doors.");
anothercar.Hatchback();
anothercar.speedUp();
