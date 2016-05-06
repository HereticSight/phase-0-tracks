//Reverse function
  //take a word

function reverse(word) {
  var newWord = "";
    //create a loop to go through each letter starting from the end
  for (var i = (word.length-1); i >= 0 ; i--) {
    //add each letter to a new string  
    newWord = newWord + word.charAt(i);
  }
  //return the new string
  return newWord
}

console.log(reverse('hello'));
