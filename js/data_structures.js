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