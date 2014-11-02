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
  svgexample = "<svg width=\"640\" height=\"480\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns=\"http://www.w3.org/2000/svg\"><g><title>Layer 1</title><rect stroke-width=\"5\" stroke=\"#000000\" fill=\"#FF0000\" id=\"svg_1\" height=\"35\" width=\"51\" y=\"35\" x=\"32\"/><ellipse ry=\"15\" rx=\"24\" stroke-width=\"5\" stroke=\"#000000\" fill=\"#0000ff\" id=\"svg_2\" cy=\"60\" cx=\"66\"/></g></svg>"
  svgCanvas.setSvgString svgexample
  return

$ ->
  console.log("DOM is ready")
  svg = new Walkway( '#picture' )
  #    //easing: 'linear',
  #    duration: '1500',
  #    selector: '#picture'
  svg.draw ->
    console.log( 'done picture!' )

  $("#set_svg").click ->
    setSvg()
