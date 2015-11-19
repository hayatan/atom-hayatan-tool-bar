module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'hayatan-tool-bar'

    @toolBar.addButton
      icon: 'repo'
      callback: 'project-manager:list-projects'
      tooltip: 'Projects'

    @toolBar.addButton
      icon: 'repo-push'
      callback: 'project-manager:save-project'
      tooltip: 'Save project'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'markdown'
      callback: 'markdown-preview:toggle'
      tooltip: 'Markdown プレビュー'

    @toolBar.addSpacer()
