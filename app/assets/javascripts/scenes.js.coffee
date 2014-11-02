# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  console.log("DOM is ready")
  // Overwriting defaults
  svg2 = new Walkway( '#picture' )
  //	{
  //    //easing: 'linear',
  //    duration: '1500',
  //    selector: '#picture'
  //  })

  svg2.draw ->
    console.dir('done picture!')
