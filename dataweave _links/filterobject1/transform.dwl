%dw 2.0
output application/xml
//here i removing users by using filterobject
---
"customer": payload.Customer filterObject ((value, key, index) -> !((key) ~= "users"))



