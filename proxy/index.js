
var httpProxy = require('http-proxy')
var http = require('http')

var proxy = httpProxy.createProxyServer({})

proxy.on('proxyReq', (proxyReq, req, res, options) => {
  res.setHeader('X-Proxied-By', 'DECIMATE');
})

http.createServer((req, res) => {
  //res.setHeader('content-type', 'application/json')
  //res.setHeader('x-revamp', 'DECIMATE')
  //res.end(JSON.stringify(process.env))
  proxy.web(req, res, { target: 'http://benfica:8080' });
})
.listen(8080)
.on('listening', () => {
  console.log('listening on port 8080')
})
