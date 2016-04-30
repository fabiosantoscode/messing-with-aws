
var http = require('http')

http.createServer((_, res) => {
  res.end('BENFICA! ' + process.env['ENVIRONMENT_VARIABLE'])
})
.listen(8080)
.on('listening', () => {
  console.log('listening on port 8080')
})

