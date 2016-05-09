// Longest word in an array:
function longestword(array) {  
  // make an array of the lengths of each item in the array
  var lengths = [];

  array.forEach(function (item, index, array) {
    lengths.push(item.length);
  });
  // find the index of the highest number in the array and use it to look up the corresponding word within the array
  return array[lengths.indexOf(Math.max(...lengths))];
}

// Compare objects for at least one key-value match:
function objectcompare(object1, object2) {
  
  //return false if no matches
  var matching = false;
  // compare the keys of each object for matches
  (Object.keys(object1)).forEach(function (item, index, array) {
    // if there are matching keys:
    if ((Object.keys(object2)).indexOf(item) !== null) {
      //compare the values for matches
      if (object1[item] == object2[item]) {
        //return true if any match        
        matching = true;
      }
      
    }
  });
  return matching;
}

//Generate an array of a given length with strings of random length.
function wordarray(length) {
  //Create a random word of random length
    words = [];
    alphabet = 'abcdefghijklmnopqrstuvwxyz';
  //loop a number of times equal to the length
  for (var i = 1; i <= length; i++) {
    word = '';
    //loop a number of times equal to a random number between 1 and 10
    for (var j = (Math.floor(Math.random() * 10) + 1); j > 0; j--) {
      //pick a random letter from the alphabet and add it to the word
      word += alphabet[Math.floor(Math.random() * (alphabet.length - 1)) + 1];
    } 
  //add the word to the array
  words.push(word);
  }
  return words;
}

console.log(longestword(["long phrase","longest phrase","longer phrase"]));

var steven = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};
var animals = {cat: "Bob", dog: "John"}

console.log(objectcompare(steven, tamir));
console.log(objectcompare(steven, animals));

for (var times = 10; times > 0; times--) {

  wordArray = wordarray(Math.floor(Math.random() * 10) + 1);
  console.log(wordArray);
  console.log(longestword(wordArray));
}