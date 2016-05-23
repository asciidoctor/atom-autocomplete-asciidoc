completionProvider = require './completion-provider'

module.exports =

  subscriptions: null

  activate: (state) ->
    completionProvider.loadCompletions()

  provide: ->
    completionProvider

  deactivate: ->
    @subscriptions?.dispose()
