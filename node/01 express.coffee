express = require 'express'
app = express()

app.get '/', (req, res)->
  console.log "/ hit!"
  res.send "Hello World!"

port = process.env.PORT || 3000

app.listen port, ->
  console.log "Listening on #{port}"
