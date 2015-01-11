logger = new Logger("explore")

Template.explore.helpers({
  isEmpty: ->
    !Projects.findOne()
  ,
  projects: ->
    Projects.find()
  ,
  projectUrl: -> "#{@owner}/#{@projectId}"
  ,
})

Template.explore.rendered = ->
  logger.debug("Initializing Isotope")
  $("#isotope-container").isotope({
    itemSelector: ".project-item",
    layoutMode: 'fitRows',
  })
