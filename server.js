const express = require('express')
const app = express()
const cors = require('cors')


app.use(cors());
app.get('/name',(req,res)=>{
    res.send({'name':'Rajesh'})
})

app.listen(3000,()=>{
    console.log('Backend server started')
})