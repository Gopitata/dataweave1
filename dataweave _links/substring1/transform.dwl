%dw 2.0
output application/json
//Here i am using filter function 
---
((payload filter $.city=="hyd").name) joinBy(',')