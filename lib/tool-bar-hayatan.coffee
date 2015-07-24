module.exports = ToolBarHayatan =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'hayatan-tool-bar'

    @toolBar.addButton
      icon: 'filing'
      callback: 'project-manager:toggle'
      tooltip: 'Projects'
      iconset: 'ion'
