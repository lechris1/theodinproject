function makeGrid(grid) {
  for(var i=0; i < grid*grid; i++) {
    $("#container").append("<div class='box'></div>");
  }
  var sqsz = 640/(grid*1.1);
  $(".box").css({"height":sqsz+"px", "width":sqsz+"px", "border-width":sqsz*0.05+"px"});
}

function clearGrid() {
  $("button").click(function() {
    $(".box").css("background-color","#f5f5f5");
  });
}

function askGrid(){
  var grid = prompt("How many squares per side would you like to make the new grid?",16);
  if(grid != null) {
    makeGrid(grid);
  }
}

$(document).ready(function() {
  var grid = 16;
  makeGrid(grid);

  $(".box").mouseenter(function() {
    $(this).css("background-color","#d9fcff");
  });
  $("#solid").click(function() {
    $(".box").mouseenter(function() {
      $(this).css("background-color","#d9fcff");
    });
  });
  $("#rainbow").click(function() {
    $(".box").mouseenter(function() {
      var randColor = "rgb(" + Math.round(Math.random()*255) + ","
                             + Math.round(Math.random()*255) + ","
                             + Math.round(Math.random()*255) + ")";
      $(this).css("background-color", randColor);
    });
  });
  $("#gray").click(function() {
    var opacity = 0.1;
    $(".box").mouseenter(function() {
      var currentColor = "rgba(0, 0, 0," + opacity + ")";
      console.log(opacity);
      $(this).css("background-color", currentColor);
      if (opacity < 1) {
          opacity = parseFloat((opacity + 0.1).toFixed(1));
      }
      else {
        opacity = 0.1;
      }
    });
  });

});
