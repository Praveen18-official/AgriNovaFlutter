const http=require('http');
const server=http.createServer((req,res)=>
res.end("Server is running")
);
const port=3000;
server.listen(port);
