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
  x = document.getElementById("tbxVenueId").value;
  document.getElementById("venuepic").style.width = "40vmin";
  document.getElementById("venuepic").style.height = "40vmin";
  document.getElementById("venuepic").style.transition = "0.5s";

console.log(x);

  if (x==4) {
    document.getElementById("venuedesc").innerHTML = " From the lush gardens to the refreshing outdoor pool and Revive Health Club, the Country Inn & Suites By Carlson, Delhi Satbari provides a tranquil escape south of India's capital city. You can dine at the 24-hour, on-site Mosaic restaurant at your leisure and surf the Web with free high-speed Internet access from the comfort of your hotel accommodation. Meet in New Delhi at this hotel's versatile event facility, which includes both indoor and outdoor spaces for up to 2,000 guests.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/countryinn.jpg";

  }
  else if (x==5) {
    document.getElementById("venuedesc").innerHTML = "Open 24 hours, Mosaicserves breakfast, lunch and dinner on site, and Big Shot offers wine and spirits. During your stay, you can also take advantage of free high-speed Internet access and the Revive Health Club, complete with fitness equipment.One of the most convenient hotels in New Delhi<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/edenlawn.jpg";
  }
  else if (x==7) {
    document.getElementById("venuedesc").innerHTML = "45 min. drive from Indira Gandhi International Airport, easy access from Metro Station, Grand Ball Room in The Leela Ambience Convention Hotel Delhi can accommodate 6000 people. Grand Sapphire Ballroom is divisible into 5 parts with pre-function areas.The Leela Ambience Convention Hotel Delhi has beautiful landscaped lawns, 480 rooms, 2 outdoor heated swimming pools, spa and offers a range of lavish banquet and conference hall options to bring special occasions alive,from royal weddings to conferences to launch events.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/grandsaph.jpg";
  }
  else if (x==8) {
    document.getElementById("venuedesc").innerHTML = "Le Garden’s Victorian Palace is the areas all-inclusive facility with our unique setting, state of the art accommodations and gracious dining. Just 10 min. drive from madhuban chowk on NH1, you will find a variety of conveniences available to tailor your party or business needs. Our desire is to provide first class service and to deliver a level of performance that exceeds the expectations of you and your guests.Affordable choices and convenient payment arrangements are available for your event.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/delhi/legarden.jpg";
  }
  else if (x==9) {
    document.getElementById("venuedesc").innerHTML = "Mandap The Party Lawn is known for its exclusive hospitality.Capacity upto 2000 people respectively, The farmhouse also provides 4 comfortable rooms, fully deluxe with hygienically maintained washrooms.Security and ample parking for the host and the guests can also be availed.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/mandap.jpg";
  }
  else if (x==10) {
    document.getElementById("venuedesc").innerHTML = "The earthy glow of the interiors at Pind Balluchi exudes opulent warmth that cocoons, the flickering lights falling soft but as bright as stars in the night sky. Extremely comfortable chairs run down the length of the space, the dazzling gold of the ceiling lamps shining off the gloss of the wooden tables. The interiors remain reminiscent of a forgotten era,merged with modern elements that make Pind Balluchi both spectacular and unique.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/pindbaluchi.jpg";
  }
  else if (x==11) {
    document.getElementById("venuedesc").innerHTML = "ROYAL PALACE is a World Class Banquet Hall in Indirapuram offers services for Marriage Parties, Conference Parties, Corporate Parties, Reception Parties, etc. Its Banquet Hall which is a centrally A/c has total Area 12,000 Sqft. It is divided on 4 Floors with lift facility to each floor. The ROYAL Palace banquet is equipped with all required amenities.The venue is taken care by experienced and skilled staff.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/royalpalace.jpg";
  }
  else if (x==12) {
    document.getElementById("venuedesc").innerHTML = "With a seating capacity of 800, this meeting area is created by combining two spaces to give you a huge 10,000 square feet of well appointed event space which comes with all modern amenities including high speed WiFi.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/ghaziabad/tangerine.jpg";
  }
  else if (x==13) {
    document.getElementById("venuedesc").innerHTML = "Concore Greno is an exclusive Club, managed by Absolute Brilliance. The club is known for a lush green lawn meant for various activities and has 36 rooms.Greno Party Lawn at Concore Greno Conference Facility is best for Wedding, Lohri Party, Valentine's Day, Holi Party, Family Function, Dealers Meet, Christian Communion, Birthday Party, First Birthday Party, Bachelor Party, Brand Promotion, Class Reunion, Cocktail Dinner,Christmas Party, Conference, Corporate Party, Diwali Party, Engagement, Farewell, Get Together, Kitty Party<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/greno.jpg";
  }
  else if (x==14) {
    document.getElementById("venuedesc").innerHTML = "At Silver Leaf, we understand that weddings are a celebration of a special bond, that of love and togetherness. We understand it to be a momentous occasion, for you and your loved ones. Our relentless efforts lie in creating happy memories that are worth cherishing and reliving forever.We stand true and prepared to the great responsibilities and challenges that come along with the planning of once in a lifetime celebration.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/openterr.jpg";
  }
  else if (x==15) {
    document.getElementById("venuedesc").innerHTML = "Spize Nothing Like That Bar-Be-Que,location Sector -63 Noida, is an ideal place for corporate Event & Get to gather gatherings to dream Engagement with lavish option of customized events for memorable moments at its large banquets Capacity up to 300 guests with grand setups.We also pride ourselves on delivering excellent quality food with professional services.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/spice.jpg";
  }
  else if (x==16) {
    document.getElementById("venuedesc").innerHTML = "With Fast Delivery Cooked Fresh. Freshly prepared food with Natural ingredients & flavors used, Authentic Chinese, North Indian Cuisines served, Great options on the Indian menu too.The Fizz Restaurant Bar & Lounge is best for Valentine's Day, Birthday Party, First Birthday Party, Bachelor Party, Cocktail Dinner, Corporate Party,Farewell, Get Together, Kitty Party, Group Dining, Product Launch, Wedding Anniversary<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/noida/thefizz.jpg";
  }
  else if (x==17) {
    document.getElementById("venuedesc").innerHTML = "Hotel Harmony Inn is a 4 star property, located at 15.3 kms from Meerut Airport, 7.2 kms from Railway Station and 2.2 kms from State Highway-18 Bus Stand. The charming fully air-conditioned luxury property is conveniently situated at Garh road, Meerut. Friendly and accommodating, the hotel offer handsomely decorated, oversized guest-rooms and suites. Hotel Harmony Inn renders modern amenities like Wi-Fi connectivity, 24 hours room service,same day express laundry service, ample parking space and all major credit/debit cards accepted.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/harmony.jpg";
  }
  else if (x==18) {
    document.getElementById("venuedesc").innerHTML = "JP Resort is a 4 star property, located at 15.3 kms from Meerut Airport, 7.2 kms from Railway Station and 2.2 kms from State Highway-18 Bus Stand. The charming fully air-conditioned luxury property is conveniently situated at Garh road, Meerut. Friendly and accommodating, the hotel offer handsomely decorated, oversized guest-rooms and suites. Hotel Harmony Inn renders modern amenities like Wi-Fi connectivity, 24 hours room service,same day express laundry service, ample parking space and all major credit/debit cards accepted.<br/>Contact No: 011-2392292";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/jpresort.jpg";
  }
  else if (x==19) {
    document.getElementById("venuedesc").innerHTML = "Meerut Hotel Krome is a popular modern boutique hotel  in Meerut. Non for its distinctive services, warm hospitality and state of the art luxuriant living.Being centrally located, this Meerut hotel is easily accessible from all the major places of the city. Perhaps, that’s why, it is an ideal destination for both leisure and corporate tourists seeking lavish accommodation in Meerut and high-tech amenities.With its strikingly beautiful décor and elegantly designed fully air-conditioned 30 rooms,  Krome  hotel stands for its opulence & luxury.All rooms have modern amenities, including flask (tea-manner) Wi-Fi internet connectivity; and an attached bathroom with modern fittings, hot and cold water, and bathroom toiletries. Room service is available 24 hours.<br/>Contact No: 011-2392292 ";
    document.getElementById("venuepic").src = "../assets/images/venue/meerut/krome.jpg";
  }
  else if (x==20) {
    document.getElementById("venuedesc").innerHTML = "With lavish gardens, fully A/C premises and luxurious services, Grand Opera is now in your city to help you celebrate your beloved parties and much-awaited birthdays. We host all the parties and fun events that you can think of-birthdays, kitties, wedding receptions-we help you celebrate them all. Sprawled across a huge expanse of 11,000m, we have a capacity of housing 5,000 people at a time, here at Grand Opera!So, be prepared for FUN, FUN, and more FUNN!! As we give you a party experience for a lifetime.<br/>Contact No: 011-2392292 ";
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
