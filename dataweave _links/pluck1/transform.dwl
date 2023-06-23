%dw 2.0
output application/json
//Here i am converting a object of objects into array of objects by using pluck function
---
payload  pluck ($$):$
