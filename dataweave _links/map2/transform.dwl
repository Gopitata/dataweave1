%dw 2.0
output application/json
//here i used map funtion to map the data of values
---
payload map{
    ($.empname):($.empdepartment)
}