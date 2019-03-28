const express = require('express')
const app = express()
const port = 9080

const response = process.env.HW_RESPONSE ? process.env.HW_RESPONSE : "hell no world"

app.get('/', (req, res) => res.send(response))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
