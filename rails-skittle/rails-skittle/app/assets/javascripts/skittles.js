function loadFlavors() {
  $.ajax({
    url: '/flavors',
    type: "GET"
  }).done(function(response){

    var flav = response;

    for (var i = 0; i < flav.length; i++) {
      new Flavor(flav[i].name, flav[i].image);
    }
  });

}

i = 0;
function threeFlavorsSelected(){
  if (i === 3) {
    return false;
  } else {
    return true;
  }
}

// in addition to this being a global variable, the array keeps growing with every btn push. It should clear out after a smash submit
// this array is accessed twice in the ajax call on the smash btn submit
flavorsArray = [];
function selectedFlavor(flav) {
  flavorsArray.push(flav);

  $('.selected_flavors').append(flav);
  $('.selected_flavors').append("<text>&nbsp&nbsp&nbsp&nbsp&nbsp</text>");

  i ++;
}

function Variety(name, image) {
  this.image = "<img id='image' src=" + image + "/>";

  $('.variety_bags').prepend(this.image);
}

function Flavor(name, image) {
  this.image = "<img class='flavor' id=" + name + " src=" + image + "/><img class='speech' src=" + randomSpeechBubble() + "/>";

  $('.flavors').prepend("<div title=" + name + " class='flav_wrap'>" + this.image + "</div>");
}

function randomSpeechBubble() {
  speech = ["'/assets/imready.png'", "'/assets/overhere.png'", "'/assets/smash.png'", "'/assets/pickme.png'"];
   return _.sample(speech);
}
