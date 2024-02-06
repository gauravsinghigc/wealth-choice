//get instant time
function GetInstantTime(DisplayAt, type = "value") {
  let now = new Date();
  let hours = now.getHours();
  let minutes = now.getMinutes();
  let seconds = now.getSeconds();

  if (hours < 10) {
    hours = "0" + hours;
  }

  if (minutes < 10) {
    minutes = "0" + minutes;
  }

  if (seconds < 10) {
    seconds = "0" + seconds;
  }

  var CurrentTime = hours + ":" + minutes + ":" + seconds;
  if (type == "value") {
    document.getElementById(DisplayAt).value = CurrentTime;
  } else {
    document.getElementById(DisplayAt).innerHTML = CurrentTime;
  }
}

//button animations
function ButtonAnimation(BtnID, AnimationText) {
  document.getElementById(BtnID).innerHTML =
    "<i class='fa fa-refresh fa-spin'></i> " + AnimationText;
  document.getElementById(BtnID).classList.remove("btn-primary");
  document.getElementById(BtnID).classList.remove("btn-info");
  document.getElementById(BtnID).classList.remove("btn-warning");
  document.getElementById(BtnID).classList.remove("btn-default");
  document.getElementById(BtnID).classList.add("btn-success");
}

//databars
function Databar(data) {
  databar = document.getElementById("" + data + "");
  if (databar.style.display === "block") {
    databar.style.display = "none";
  } else {
    databar.style.display = "block";
  }
}

//search suggestions and display selective or entered values only
function SearchData(searchinput, items_box) {
  // Get the search input
  var searchInput = document.getElementById("" + searchinput + "").value;

  // Get all content items
  var contentItems = document.getElementsByClassName("" + items_box + "");

  // Loop through all content items
  for (var i = 0; i < contentItems.length; i++) {
    // Get the current item
    var item = contentItems[i];

    // Get the text of the current item
    var itemText = item.textContent.toLowerCase();

    // Check if the search input is found in the item text
    if (itemText.includes(searchInput.toLowerCase())) {
      // If found, show the item
      item.style.display = "block";
    } else {
      // If not found, hide the item
      item.style.display = "none";
    }
  }
}

//hide msg notes
function HideMsgNote(NoteID) {
  document.getElementById(NoteID).style.display = "none";
}

// add lead js start
function showElement(elementId) {
  document.getElementById("residential").style.display = "none";
  document.getElementById("commercial").style.display = "none";
  document.getElementById("agriculture").style.display = "none";
  
  document.getElementById(elementId).classList.remove = "btn-default";
  document.getElementById(elementId).classList.add = "btn-de";
  document.getElementById(elementId).style.display = "block";
}
var PaymentPlan = document.getElementById("SelectValueForRent");
function SelectedValueForRent(selectElement) {
  if (selectElement.value === "RENT") {
    PaymentPlan.classList.remove("hidden");
  } else {
    PaymentPlan.classList.add("hidden");
  }
}

const slider = document.getElementById('slider');
const minValueInput = document.getElementById('min-value');
const maxValueInput = document.getElementById('max-value');

noUiSlider.create(slider, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput.value = Math.round(value);
  } else {
    maxValueInput.value = Math.round(value);
  }
});

const slider_01 = document.getElementById('slider_01');
const minValueInput_01 = document.getElementById('min-value_01');
const maxValueInput_01 = document.getElementById('max-value_01');

noUiSlider.create(slider_01, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider_01.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput_01.value = Math.round(value);
  } else {
    maxValueInput_01.value = Math.round(value);
  }
});

const slider_02 = document.getElementById('slider_02');
const minValueInput_02 = document.getElementById('min-value_02');
const maxValueInput_02 = document.getElementById('max-value_02');

noUiSlider.create(slider_02, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider_02.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput_02.value = Math.round(value);
  } else {
    maxValueInput_02.value = Math.round(value);
  }
});
const slider_03 = document.getElementById('slider_03');
const minValueInput_03 = document.getElementById('min-value_03');
const maxValueInput_03 = document.getElementById('max-value_03');

noUiSlider.create(slider_03, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider_03.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput_03.value = Math.round(value);
  } else {
    maxValueInput_03.value = Math.round(value);
  }
});
const slider_04 = document.getElementById('slider_04');
const minValueInput_04 = document.getElementById('min-value_04');
const maxValueInput_04 = document.getElementById('max-value_04');

noUiSlider.create(slider_04, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider_04.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput_04.value = Math.round(value);
  } else {
    maxValueInput_04.value = Math.round(value);
  }
});
const slider_05 = document.getElementById('slider_05');
const minValueInput_05 = document.getElementById('min-value_05');
const maxValueInput_05 = document.getElementById('max-value_05');

noUiSlider.create(slider_05, {
  start: [0, 100],
  connect: true,
  range: {
    'min': 10000,
    'max': 10000000
  }
});

slider_05.noUiSlider.on('update', function(values, handle) {
  const value = values[handle];
  if (handle === 0) {
    minValueInput_05.value = Math.round(value);
  } else {
    maxValueInput_05.value = Math.round(value);
  }
});
$('#example-multiple-optgroups').multiselect();

$(document).ready(function() {
  $("#test").CreateMultiCheckBox({
    width: '230px',
    defaultText: 'Select Below',
    height: '250px'
  });
});

function getProperty() {
  let propertyType = document.getElementById('propertyType');

  let paymenetPlan = document.getElementById('paymenetPlan');
  let paymenetPlan1 = document.getElementById('paymenetPlan1');
  let paymenetPlan2 = document.getElementById('paymenetPlan2');
  let paymenetPlan3 = document.getElementById('paymenetPlan3');
  let paymenetPlan4 = document.getElementById('paymenetPlan4');
  var PropertyNameParagraph = document.getElementById('PropertyName');
  PropertyNameParagraph.innerHTML = propertyType.value;
  if (propertyType.value == 'PLOT') {
    paymenetPlan.style.display = 'block';
    paymenetPlan1.style.display = 'none';
    paymenetPlan2.style.display = 'none';
    paymenetPlan3.style.display = 'none';
    paymenetPlan4.style.display = 'none';

  } else if (propertyType.value == 'FLAT') {
    paymenetPlan1.style.display = 'block';
    paymenetPlan.style.display = 'none';
    paymenetPlan2.style.display = 'none';
    paymenetPlan3.style.display = 'none';
    paymenetPlan4.style.display = 'none';
  } else if (propertyType.value == 'VILLA') {

    paymenetPlan2.style.display = 'block';
    paymenetPlan1.style.display = 'none';
    paymenetPlan.style.display = 'none';
    paymenetPlan3.style.display = 'none';
    paymenetPlan4.style.display = 'none';

  } else if (propertyType.value == 'FARMHOUSE') {

    paymenetPlan3.style.display = 'block';
    paymenetPlan1.style.display = 'none';
    paymenetPlan2.style.display = 'none';
    paymenetPlan.style.display = 'none';
    paymenetPlan4.style.display = 'none';

  } else if (propertyType.value == 'KOTHI') {
    paymenetPlan4.style.display = 'block';
    paymenetPlan3.style.display = 'none';
    paymenetPlan1.style.display = 'none';
    paymenetPlan2.style.display = 'none';
    paymenetPlan.style.display = 'none';
  
  } else {
    paymenetPlan3.style.display = 'none';
    paymenetPlan1.style.display = 'none';
    paymenetPlan2.style.display = 'none';
    paymenetPlan.style.display = 'none';
    paymenetPlan4.style.display = 'none';
  }

}

// add lead js end


