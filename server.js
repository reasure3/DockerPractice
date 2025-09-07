const express = require('express');
const app = express();

const server = app.listen(8080, () => {
  console.log('서버 실행중 http://localhost:8080');
});

app.get('/', (req, res) => {
  res.send('안녕~~~!!!');
}); 

// docker가 종료 메시지 보내면 종료 (graceful shutdown)
process.on('SIGTERM', () => {
  server.close(() => {
    console.log('HTTP server closed')
  })
})
// 터미널에서 종료 메시지 보내면 종료 (graceful shutdown)
process.on('SIGINT', () => {
  server.close(() => {
    console.log('HTTP server closed')
  })
}) 