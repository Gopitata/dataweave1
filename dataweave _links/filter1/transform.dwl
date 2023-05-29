%dw 2.0
output application/json
//Here i am using filter function  for reqired output
---
payload filter ((item, index) -> item.Product != "B")
