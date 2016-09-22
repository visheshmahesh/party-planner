function logout() {
    alert("You Have been Successfully Logged Out!");
}

// PARALLAX SCRIPT //

window.addEventListener('scroll',parallax);
var y, header;
function parallax () {
  y = window.pageYOffset;
  header = document.getElementById('header');
  header.style.top = y*0.6 + 'px';
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
  if (x==4) {
    document.getElementById("venuedesc").innerHTML = " From the";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/countryinn.jpg";

  }
  else if (x==5) {
    document.getElementById("venuedesc").innerHTML = "Open ";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/edenlawn.jpg";
  }
  else if (x==6) {
    document.getElementById("venuedesc").innerHTML = "45 min. ";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/grandsaph.jpg";
  }
  else if (x==7) {
    document.getElementById("venuedesc").innerHTML = "Le Ga ";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/legarden.jpg";
  }
  else if (x==8) {
    document.getElementById("venuedesc").innerHTML = "Mandap The";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/mandap.jpg";
  }
  else if (x==9) {
    document.getElementById("venuedesc").innerHTML = "The eart ";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/pindbaluchi.jpg";
  }
  else if (x==10) {
    document.getElementById("venuedesc").innerHTML = "ROYAL PALACE i";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/royalpalace.jpg";
  }
  else if (x==11) {
    document.getElementById("venuedesc").innerHTML = "With a seating  ";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/tangerine.jpg";
  }
  else if (x==12) {
    document.getElementById("venuedesc").innerHTML = "Concore Greno ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/greno.jpg";
  }
  else if (x==13) {
    document.getElementById("venuedesc").innerHTML = "At Silver Leaf,    ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/openterr.jpg";
  }
  else if (x==14) {
    document.getElementById("venuedesc").innerHTML = "Spize Noth ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/spice.jpg";
  }
  else if (x==15) {
    document.getElementById("venuedesc").innerHTML = "With Fast Delivery  ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/thefizz.jpg";
  }
  else if (x==16) {
    document.getElementById("venuedesc").innerHTML = "Hotel Harmony    ";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/harmony.jpg";
  }
  else if (x==17) {
    document.getElementById("venuedesc").innerHTML = "JP Resort is";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/jpresort.jpg";
  }
  else if (x==18) {
    document.getElementById("venuedesc").innerHTML = "Meerut Hotel Krome";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/krome.jpg";
  }
  else if (x==19) {
    document.getElementById("venuedesc").innerHTML = "With lavish gardens";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/opera.jpg";
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
