%dw 2.0
output application/json
var temp = {"name": "Ana", "age": 29}
---
//Here i can declare on varriable and add to the actual payload
payload << temp



