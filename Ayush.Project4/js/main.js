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
  x = document.getElementById("venue").selectedIndex;
  document.getElementById("venuepic").style.width = "40vmin";
  document.getElementById("venuepic").style.height = "40vmin";
  document.getElementById("venuepic").style.transition = "0.5s";
  if (x==0) {
    document.getElementById("venuedesc").innerHTML = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin varius massa. Curabitur mattis semper lorem id tempus. Phasellus nec tellus vel nibh faucibus luctus. Vestibulum sit amet sapien turpis. Proin placerat pretium lectus ac molestie. Phasellus mollis mi sed enim dignissim blandit. Nunc hendrerit mattis lectus quis blandit. In a tortor vel tortor volutpat laoreet. Nam tristique arcu a massa dignissim, in eleifend nibh ultricies.";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/grandsaph.jpg";
    console.log("yes");

  }
  else if (x==1) {
    document.getElementById("venuedesc").innerHTML = "WORKING2";
  }
  else if (x==2) {
    document.getElementById("venuedesc").innerHTML = "WORKING3";
  }
  else if (x==3) {
    document.getElementById("venuedesc").innerHTML = "WORKING4";
  }
}

// FUNCTION TO GENRATE INVITATION TEMPLATE WITH NAME //

function getname() {

  var type;
  type = document.getElementById("invitype").selectedIndex;

  var name =  document.getElementById('inputname').value;
  var date =  document.getElementById('inputdate').value;

  document.getElementById('invibtn2').disabled = false;
  document.getElementById('invibtn2').style.transition="1s";

  if (type==0) {

      document.getElementById('Layer_1').style.opacity="1";
      document.getElementById('Layer_1').style.transition="1s";
      document.getElementById('Layer_2').style.opacity="0";
      var x =  document.getElementById('name1');
      x.textContent = name;
      var w =  document.getElementById('date1');
      w.textContent = date;
}

  else if (type==1) {

    document.getElementById('Layer_2').style.opacity="1";
    document.getElementById('Layer_2').style.transition="1s";
    document.getElementById('Layer_1').style.opacity="0";
    var y =  document.getElementById('name2');
    y.textContent = name;
    var z =  document.getElementById('date2');
    z.textContent = date;
  }
}


// SVG TO PNG CONVERTER

function SVGPNG() {

    var type;
    type = document.getElementById("invitype").selectedIndex;

    var btn = document.querySelector('button');
    var canvas = document.querySelector('canvas');

    if (type==0) {

  var svg = document.getElementById('Layer_1');

  function triggerDownload(imgURI) {
    var evt = new MouseEvent('click', {
      view: window,
      bubbles: false,
      cancelable: true
    });

    var a = document.createElement('a');
    a.setAttribute('download', 'invitation.png');
    a.setAttribute('href', imgURI);
    a.setAttribute('target', '_blank');

    a.dispatchEvent(evt);
  }

  btn.addEventListener('click', function(imgURI) {
    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');

    var data = (new XMLSerializer()).serializeToString(svg);
    var DOMURL = window.URL || window.webkitURL || window;

    var img = new Image();
    var svgBlob = new Blob([data], {
      type: 'image/svg+xml;charset=utf-8'
    });
    var url = DOMURL.createObjectURL(svgBlob);

    img.onload = function() {
      ctx.drawImage(img, 0, 0);
      DOMURL.revokeObjectURL(url);

      var imgURI = canvas
        .toDataURL('image/png')
        .replace('image/png', 'image/octet-stream');

      triggerDownload(imgURI);
    };

    img.src = url;
  });
}

else if (type==1) {

    var svg = document.getElementById('Layer_2');

    function triggerDownload(imgURI) {
      var evt = new MouseEvent('click', {
        view: window,
        bubbles: false,
        cancelable: true
      });

      var a = document.createElement('a');
      a.setAttribute('download', 'invitation.png');
      a.setAttribute('href', imgURI);
      a.setAttribute('target', '_blank');

      a.dispatchEvent(evt);
    }

    btn.addEventListener('click', function(imgURI) {
      var canvas = document.getElementById('canvas');
      var ctx = canvas.getContext('2d');

      var data = (new XMLSerializer()).serializeToString(svg);
      var DOMURL = window.URL || window.webkitURL || window;

      var img = new Image();
      var svgBlob = new Blob([data], {
        type: 'image/svg+xml;charset=utf-8'
      });
      var url = DOMURL.createObjectURL(svgBlob);

      img.onload = function() {
        ctx.drawImage(img, 0, 0);
        DOMURL.revokeObjectURL(url);

        var imgURI = canvas
          .toDataURL('image/png')
          .replace('image/png', 'image/octet-stream');

        triggerDownload(imgURI);
      };

      img.src = url;
    });
}

}
