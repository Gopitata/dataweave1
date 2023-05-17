%dw 2.0

output application/json
//Here i am using scan function as desired output
---

flatten(payload scan /[0-5]/) joinBy ''

//flatten(payload scan /[a-z]/) joinBy ''