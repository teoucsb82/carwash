# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

pages = ->
  $(".pricing").click ->
    $(".pricing-active").removeClass("pricing-active")
    $(".pricing-header-active").removeClass("pricing-header-active")
    $(".btn-warning").text("Select").removeClass("btn-warning").addClass("btn-primary")
    $(this).addClass("pricing-active")
    $(this).children(".pricing-header").addClass("pricing-header-active")
    $(this).find(".btn").text("Selected").addClass("btn-warning").removeClass("btn-primary")
  return

$ ->
  Layout.init()
  Layout.initOWL()
  LayersliderInit.initLayerSlider()
  Layout.initImageZoom()
  Layout.initTouchspin()
  Layout.initUniform()
  Layout.initTwitter()
  Layout.initFixHeaderWithPreHeader()
  Layout.initNavScrolling()
  pages()
