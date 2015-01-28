fibrous = require 'use-global-fibrous'

nodeify = (p) ->
  """Nodeifies a Promise"""

  (callback) ->
    p.then (result) ->
      callback? null, result
    , (err) ->
      callback? err

fibrousify = (P) ->
  """Takes in a Promise implementation and adds `psync` and `pfuture` methods
    to instances of it"""

  unless P::psync?
    P::psync = ->
      f = nodeify @
      f.sync()

  unless P::pfuture?
    P::pfuture = ->
      f = nodeify @
      f.future()

  P

module.exports = fibrousify
