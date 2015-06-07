# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require global/plugins/jqvmap/jqvmap/jquery.vmap
#= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia
#= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world
#= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe
#= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany
#= require global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa
#= require global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata
#= require global/plugins/morris/morris.min
#= require global/plugins/morris/raphael-min
#= require global/plugins/jquery.sparkline.min
#= require global/scripts/metronic
#= require admin/layout4/scripts/layout
#= require admin/layout4/scripts/demo
#= require admin/pages/scripts/index3
#= require admin/pages/scripts/tasks
#= require members

$("#members-body").ready -> 
  Metronic.init()
  Layout.init()
  Demo.init()
  Index.init()
  Tasks.initDashboardWidget()
  return
