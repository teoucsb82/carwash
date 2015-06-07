# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#members-body").ready -> 
  Metronic.init()
  Layout.init()
  Demo.init()
  Index.init()
  Tasks.initDashboardWidget()
  console.log "loaded scripts"
  return
