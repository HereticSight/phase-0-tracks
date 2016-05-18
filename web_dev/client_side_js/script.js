//console log to make a note that the script is running
console.log("This script is running!");

//function to turn all links red
function turnLinksRed(){
  //set a variable for all links
  var links = document.getElementsByTagName("a")
    //loop through each item in the links array
    for (var i = 0; i < links.length; i++){
    //change the style of the link to red
    links[i].style.color = "red";
  };
};

//driver code to run the function
turnLinksRed();

//function to shrink the first image by 50%
function shrinkPictures(){
  //set a variable for all images
  var photos = document.getElementsByTagName("img");
  //set a variable for the first photo in the photos array
  firstPhoto = photos[0];
  //set the width of the first photo to 50%
  firstPhoto.style.width = "50%";
};

//driver code to run the function
shrinkPictures();

//function to turn a picture transparent
function transparentPic(){
  //set a variable for 
  var photos = document.getElementsByTagName("img");
  lastPhoto = photos[1];
  lastPhoto.style.opacity = "0.25";
};

transparentPic();

var firstHeading = document.getElementsByTagName("h1")[0];

function deleteClicked(event){
event.target.parentNode.removeChild(event.target);
};

firstHeading.addEventListener("click", deleteClicked)

function rickRolled(event){
  var newwindow = window.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
    if (window.focus) {newwindow.focus()};
    return false;
};

// function rickRolled(event){
//   var pageTitle = document.getElementsByTagName("h1")[1]
//   var newEl = document.createElement('div');
//   newEl.innerHTML = '<iframe width="640" height="360" src="https://www.youtube.com/embed/dQw4w9WgXcQ?autoplay=1" frameborder="0" allowfullscreen></iframe>';
//
//   pageTitle.parentNode.insertBefore(newEl, pageTitle);
// };
//
// document.addEventListener("click", rickRolled);

function gifReveal(event){
      var pageTitle = document.getElementsByTagName("h1")[1]
      var newEl = document.createElement('div');
      newEl.innerHTML = '<img src="https://media.giphy.com/media/Nf5FCBnN2TCAE/giphy.gif">';
      pageTitle.parentNode.insertBefore(newEl, pageTitle);
};
//
// function addEventListenerOnce(target, type, listener) {
//     target.addEventListener(type, function fn(event) {
//         target.removeEventListener(type, fn);
//         listener(event);
//     });
// }
//
// addEventListenerOnce(document.getElementsByTagName("img")[0], type,("click", gifReveal));
// //

function handlerFunc(anEvent){
  anEvent.target.removeEventListener(anEvent.type, arguments.callee);
  gifReveal(event)
};

document.getElementsByTagName("img")[1].addEventListener("click", handlerFunc);

function handlerFunc2(anEvent2){
  anEvent2.target.removeEventListener(anEvent2.type, arguments.callee);
  rickRolled(event)
};

document.getElementsByTagName("img")[0].addEventListener("click", handlerFunc2);