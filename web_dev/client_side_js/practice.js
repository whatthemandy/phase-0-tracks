// print test message to console to make sure it's linked correctly
console.log("It works!")

// add border to image element
function addRedBorder() {
  var elements = document.getElementById("kitties");
  elements.style.border = "3px solid red"
  }

addRedBorder()

// hide photo element
function hidePic(event) {
  event.target.style.visibility = "hidden";
  }

// set "img" elements equal to new variable
var photos = document.getElementsByTagName("img");

// set the one image we want equal to new variable
var cat_photo = photos[0]

cat_photo.addEventListener("click", hidePic);

