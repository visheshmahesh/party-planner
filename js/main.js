function register() {
    alert("You Have been Successfully Registered");
}

// PARALLAX SCRIPT //

window.addEventListener('scroll',parallax);
var y, header;
function parallax () {
  y = window.pageYOffset;
  header = document.getElementById('header');
  header.style.top = y * 0.5 + 'px';
}

// SCRIPT FOR HIDING HINT TEXT ON SCROLL //

window.addEventListener('scroll',hidehint);

function hidehint () {
  text = document.getElementById('hinttext');
  text.style.opacity="0";
  text.style.transition="1s";
}

// SCRIPT TO CHANGE VENUE DIV CONTENT //

function Change() {
  var x;
  x = document.getElementById("<%=ddlVenue.VenueId %>");

  document.getElementById("venuepic").style.width = "40vmin";
  document.getElementById("venuepic").style.height = "40vmin";
  document.getElementById("venuepic").style.transition = "0.5s";
  if (x==4) {
    document.getElementById("venuedesc").innerHTML = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin varius massa. Curabitur mattis semper lorem id tempus. Phasellus nec tellus vel nibh faucibus luctus. Vestibulum sit amet sapien turpis. Proin placerat pretium lectus ac molestie. Phasellus mollis mi sed enim dignissim blandit. Nunc hendrerit mattis lectus quis blandit. In a tortor vel tortor volutpat laoreet. Nam tristique arcu a massa dignissim, in eleifend nibh ultricies.";
    document.getElementById("venuepic").src = "./assets/images/venue/delhi/grandsaph.jpg";
    console.log("yes");

  }
  else if (x==5) {
    document.getElementById("venuedesc").innerHTML = "WORKING2";
  }
  else if (x==6) {
    document.getElementById("venuedesc").innerHTML = "WORKING3";
  }
  else if (x==7) {
    document.getElementById("venuedesc").innerHTML = "WORKING4";
  }
}
