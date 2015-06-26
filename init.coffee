setGrammar = (ed)=>
  if /.mi$/.test(ed.getPath()) or /.m$/.test(ed.getPath())
    ed.setGrammar(atom.grammars.grammarForScopeName("text.html.mason"))

atom.workspace.observeTextEditors (ed)=>
  ed.onDidChangePath(setGrammar)
  setGrammar(ed)
