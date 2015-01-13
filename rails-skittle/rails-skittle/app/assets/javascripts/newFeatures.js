$(document).ready(function() {

    $.ajax({
    url: '/varieties',
    type: "GET"
  }).done(function(response){

    var obj = response;

    for (var i = 0; i < obj.length; i++) {
      new Variety(response[i].name, response[i].image);
    }
  });

  loadFlavors();

  // $(".flavors").on("mouseover", ".flavor", function(event){
    // popup flavor name on mouseover
  // });

  $(".flavors").on("click", ".flavor", function(event){
    var $target = event.target;

    if (threeFlavorsSelected()) {
      selectedFlavor($target.id);
    }

    $($target).css("display", "none");

    if (i === 3) {
      $(".smash").css("display", "block");
    }
  });

  $("#smash_btn").on("submit", function(event){
    event.preventDefault();
    $target = $(event.target);

    $.ajax({
      url: $target.attr("action"),
      type: $target.attr("method"),
      data: {flavors: flavorsArray}
    }).done(function(response) {
      $(".results").css("display", "block").html("Your SMASH Flavor is: <br><br>").append(response + "!!");
      $(".smash").css("display", "none");
      $(".again").css("display", "block");
      flavorsArray = [];
    });
  });

  $("#smash_again_btn").on("submit", function(event){
    event.preventDefault();
    $target = $(event.target);

    loadFlavors();
    $(".selected_flavors").html("");
    $(".again").css("display", "none");
    $(".results").css("display", "none");
    i = 0;
  });

  window.setInterval(function(){

    randomElements = $(".flavor").get().sort(function() {
        return Math.round(Math.random()) - 0.5;
    }).slice(0, 3);

    // I'd like to extract this functionality into its own function
    var coinToss = _.sample([0,1,2]);
    // console.log(randomElements[0]);

    if (coinToss === 0) {
      $(randomElements[0]).effect("shake", {distance: 5}, {times: 2});
    } else if (coinToss === 1) {
      $(randomElements[1]).effect("bounce", {times: 2}, "slow" );
    } else {
      $(randomElements[2]).effect("pulsate", {times: 2});
    }

  }, 1000);

// Can I refactor this into one? very similar functionality here?
  window.setInterval(function(){

    var randomElements = $(".speech").get().sort(function() {
        return Math.round(Math.random()) - 0.5;
    }).slice(0, 1);

    $(randomElements).css("display", "inline-block");

    window.setInterval(function(){
      $(randomElements).css("display", "none");
    }, 2500);

  }, 1800);

  // function coinToss() {
  //   return coinToss = _.sample([0,1]);
  // }

});