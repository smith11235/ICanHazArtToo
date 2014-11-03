# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

svgCanvas = null
init_embed = ->
  frame = document.getElementById("svgedit")
  svgCanvas = new embedded_svg_edit(frame)
  
  # Hide main button, as we will be controlling new/load/save etc from the host document
  doc = undefined
  doc = frame.contentDocument
  doc = frame.contentWindow.document  unless doc
  mainButton = doc.getElementById("main_button")
  mainButton.style.display = "none"
  if $('#scene_image').attr( 'value' )?
    loadSvg()

  return

window.init_embed = init_embed

handleSvgData = (data, error) ->
  if error
    alert "error " + error
  else
    console.log "START DATA"
    console.log "SVG DATA:[\n" + data + "\n]"
    $("#scene_image").attr 'value', data
    console.log "END DATA"
  return

setSvg = ->
  svgCanvas.getSvgString() handleSvgData


loadSvg = ->
  svg_doc = $('#scene_image').attr( 'value' )
  svgCanvas.setSvgString svg_doc
  console.log( "Loading existing svg data" )
  return

$ ->
  console.log("DOM is ready")

  svg = new Walkway(
    selector: "#picture"
    duration: "2000"
    
    # can pass in a function or a string like 'easeOutQuint'
    easing: (t) ->
      t * t
  )

  svg.draw ->
    console.log( 'done picture!' )

  $("#set_svg").click ->
    setSvg()

  $(".edit_scene").submit ->
    setSvg()


