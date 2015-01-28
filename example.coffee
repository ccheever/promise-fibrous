bluebird = require 'bluebird'
fibrous = require 'use-global-fibrous'
promiseFibrous = require '.'

Promise = promiseFibrous bluebird.Promise

fibrous.run ->
  p = Promise.resolve 5
  five = p.psync()
  console.log "#{ five }SOS"
