
// Slider

var slider = tns({
  "container": "#rewind",
  "items": 4,
  "rewind": true,
  "swipeAngle": false,
  "speed": 400,
  "controlsContainer": "#controls",
  "responsive": {
    "320": {
      "items": 1,
      "controls": false,
    },
    "500": {
      "controls": true,
    },
    "736": {
      "items": 2,
      "controls": true,
    },
    "896": {
      "items": 2,
      "controls": true,
    },
    "1080": {
      "items": 3,
      "controls": true,
    },
    "1280": {
      "items": 4,
      "controls": true,
    }
  }
});






