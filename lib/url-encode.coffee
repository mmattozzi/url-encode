module.exports =
  activate: ->
    atom.workspaceView.command "url-encode:encode", => @encode()
    atom.workspaceView.command "url-encode:decode", => @decode()

  encode: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem
    selections = editor.getSelections()

    selection.insertText(encodeURIComponent(selection.getText()),
      { "select": true}) for selection in selections

  decode: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.activePaneItem
    selections = editor.getSelections()
    selection.insertText(decodeURIComponent(selection.getText()),
      { "select": true}) for selection in selections
