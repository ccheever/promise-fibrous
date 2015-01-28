bluebird = require 'bluebird'
fibrous = require 'use-global-fibrous'
promous = require '.'

Promise = promous bluebird.Promise

fibrous.run ->
  p = Promise.resolve 5
  five = p.psync()
  console.log "#{ five }SOS"
