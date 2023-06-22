%dw 2.0
output application/json
//Here i created indexes fields by using map function
---
payload map ((item, index) ->{
    "num":index,
    "fname":item.firstname,
    "lname":item.lastname
} )


