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

console.log(longestword(["long phrase","longest phrase","longer phrase"]));