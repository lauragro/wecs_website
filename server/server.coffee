http = require 'http'
express = require 'express'

app = express()

app.use express.static("public")

server = http.createServer app

port = process.env.PORT || 3000

server.listen port

console.log "Server listening on port #{port}"
