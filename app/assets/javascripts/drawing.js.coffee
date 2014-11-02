  $ ->
	  console.log("DOM is ready")
	  // Overwriting defaults
    var svg2 = new Walkway({
      //easing: 'linear',
      duration: '1500',
      selector: '#picture'
    });
  
    svg2.draw(function() {
      console.dir('done picture!');
    });
