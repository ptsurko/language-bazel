describe 'Bazel grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-bazel')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.build')

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.build'


  it 'tokenizes strings', ->
    {tokens} = grammar.tokenizeLine 'var = "foobar"'

    expect(tokens[0]).toEqual value: 'var', scopes: ['source.build', 'meta.assignment.build', 'variable.other.build']
    expect(tokens[5]).toEqual value: 'foobar', scopes: ['source.build', 'meta.assignment.build', 'string.quoted.double.build']
