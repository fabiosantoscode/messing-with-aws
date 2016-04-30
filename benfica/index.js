
var http = require('http')

http.createServer(function (_, res)  {
  res.end('BENFICA! ' + process.env['ENVIRONMENT_VARIABLE'])
}).listen(8080)

