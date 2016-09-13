function logout() {
    alert("You Have been Successfully Logged Out!");
}

// PARALLAX SCRIPT //

window.addEventListener('scroll',parallax);
var y, header;
function parallax () {
  y = window.pageYOffset;
  header = document.getElementById('header');
  header.style.top = y * 0.5 + 'px';
}

// HIDING HINT TEXT ON SCROLL //

window.addEventListener('scroll',hidehint);

function hidehint () {
  text = document.getElementById('hinttext');
  text.style.opacity="0";
  text.style.transition="1s";
}
