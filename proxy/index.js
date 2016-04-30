
var httpProxy = require('http-proxy')
var http = require('http')

var proxy = httpProxy.createProxyServer({})

http.createServer((req, res) => {
  proxy.web(req, res, { target: 'http://benfica:8080' });
})
.listen(8081)
.on('listening', () => {
  console.log('listening on port 8081')
})
