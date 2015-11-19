module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'hayatan-tool-bar'
    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'filing'
      callback: 'project-manager:toggle'
      tooltip: 'Projects'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'social-markdown'
      callback: 'markdown-preview:toggle'
      tooltip: 'Markdown プレビュー'
      iconset: 'ion'
