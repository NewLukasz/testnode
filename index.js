const http = require('http');

console.log('TEST');

const server = http.createServer((req, res) => {
  alert(20);
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});

alert(30);

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});

alert(40);
