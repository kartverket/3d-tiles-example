const express = require('express');
const app = express();
const cors = require('cors');
const serveIndex = require('serve-index');
const port = 8120;
const host = '0.0.0.0'

app.use(cors());

app.use(express.static('public'), serveIndex('public', {'icons': true}));

app.listen(port, host);

console.log(`Running on http://${host}:${port}`);